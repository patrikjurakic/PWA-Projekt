<?php
    session_start();
    $dbc = mysqli_connect("localhost", "root", NULL, "projekt") or 
    die("Connection failed <br><br>". mysqli_connect_error());

    $stmt = $dbc->prepare("INSERT INTO korisnik (ime, prezime, korisnicko_ime, lozinka) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $ime, $prezime, $kime, $hash);
    
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Le Monde - Login</title>
    <link rel="icon" href="images/favicon.jpg" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="article.css">
    <script type="text/javascript">
        function validacija(){
            var slanje = true;
            //rules
            if (document.getElementById("ime").value.length < 1){
                document.getElementById("ime").style.border ="2px dashed red";
                document.getElementById("porukaime").innerHTML="Ime ne smije biti prazno!";
                slanje = false;
            }
            else{
                document.getElementById("ime").style.border ="1px solid black";
                document.getElementById("porukaime").innerHTML="";
            };

            return slanje;
        };
    </script>
</head>
<body>
    <div class="main">
    <header class="header">
          <h1><a href="index.php"><img src="images/naslov.png" alt="LeMonde" width="15%"></a></h1>
          <div class="line">
                <div class="navigation">
                <a href="index.php">HOME</a>
                <a href="politique.php">POLITIQUE</a>
                <a href="sport.php">SPORT</a>
                <a href="unos.php">ADMINISTRACIJA</a>
                </div>
          </div>
    </header>
    <div class="content registracija">
        <h4><a href="unos.php">ADMINISTRACIJA</a></h4>
        <h2>Registracija</h2>
        <form method="post" action="registracija.php" onsubmit="return validacija()">
            Ime: <input name="ime" id="ime" type="text" required><span id="porukaime"> </span><br>
            Prezime: <input name="prezime" id="prezime" type="text" required><span id="porukaprezime"> </span><br>
            Korisničko ime: <input name="korisnicko_ime" id="kime" type="text" required><span id="porukakime"> </span><br>
            Lozinka: <input name="lozinka" id="lozinka" type="password" required><span id="porukalozinka"> </span><br>
            Ponovljena Lozinka: <input name="plozinka" id="plozinka" type="password" required><span id="porukaplozinka"> </span><br>
            <div class="form-item">
                <input type="submit" name="submitreg" id="submitreg" value="Pošalji" class="button">
            </div> 
        </form><br>
        <?php
        if (isset($_POST['submitreg'])){
            $ime = $_POST['ime'];
            $prezime = $_POST['prezime'];
            $kime = $_POST['korisnicko_ime'];
            $lozinka = $_POST['lozinka'];
            $plozinka = $_POST['plozinka'];
            $sql = "SELECT (korisnicko_ime) FROM korisnik WHERE korisnicko_ime='$kime'";
            $result = $dbc->query($sql);
            if($result->num_rows >= 1){
                echo "<p style='color:red;'>Korisničko ime se već koristi!</p>";
            }
            else{
                if ($lozinka == $plozinka){
                echo "Registracija je uspješna. Prijavite se ispod.<br>";
                $lozinka = $_POST['lozinka'];
                $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);
                $sql = "INSERT INTO korisnik (ime, prezime, korisnicko_ime, lozinka) 
                VALUES ('$ime', '$prezime', '$kime', '$hashed_password')";
                $result = mysqli_query($dbc, $sql) or die('Error querying databese.');
                }
                else {
                    echo "<p style='color:red;'>Lozinka i ponovljena lozinka moraju biti iste!</p>";
                }
            }
        }
        ?>
        <br>
        <?php
            $stmt = $dbc->prepare("SELECT korisnicko_ime, lozinka, razina FROM korisnik WHERE korisnicko_ime=?");
            $stmt->bind_param("s", $ime);
        ?>
        <h2>Prijava</h2>
        <form method="post" action="registracija.php">
            Korisničko ime: <input name="korisnicko_ime" type="text" required><br>
            Lozinka: <input name="lozinka" type="password" required><br>
            <div class="form-item">
                <input type="submit" name="submit" id="submit" value="Pošalji" class="button">
            </div> 
        </form><br>
        <?php
        if (isset($_POST['submit'])){
            $ime = $_POST['korisnicko_ime'];
            $lozinka = $_POST['lozinka'];
            $stmt->execute();
            $result = $stmt->get_result();
            $row = $result->fetch_assoc();
            if($result->num_rows == 1){
                if (password_verify($lozinka, $row['lozinka'])){
                    $_SESSION['username']=$ime;
                    $_SESSION['level']=$row['razina'];
                }
                else{
                    echo "<p style='color:red;'>Unijeli ste pogrešno korisničko ime ili lozinku</p>";
                }
            }
            else{
                echo "<p style='color:red;'>Unijeli ste pogrešno korisničko ime ili lozinku</p>";
            }
        }
        if (isset($_SESSION['username'])){
            echo 'Dobro došli ' . $_SESSION['username'];
            echo '<br><a href="unos.php">Nastavak</a>';
        }
        ?>
    </div>
    </div>
    <footer class="footer">
        <div>
            <h4>SUIVEZ LE MONDE</h4>
        </div>
    </footer>
</body>
</html>