<?php
    session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Le Monde - Administracija</title>
    <link rel="icon" href="images/favicon.jpg" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="article.css">
    <script type="text/javascript">
        function validacija(){
            var slanje = true;
            //rules
            if (document.getElementById("naslov").value.length < 5 || document.getElementById("naslov").value.length > 30){
                document.getElementById("naslov").style.border ="2px dashed red";
                document.getElementById("porukanaslov").innerHTML="Naslov vjesti mora imati između 5 i 30 znakova!<br>";
                slanje = false;
            }
            else{
                document.getElementById("naslov").style.border ="1px solid black";
                document.getElementById("porukanaslov").innerHTML="";
            };
            if (document.getElementById("sazetak").value.length < 10 || document.getElementById("naslov").value.length > 100){
                document.getElementById("sazetak").style.border ="2px dashed red";
                document.getElementById("porukasazetak").innerHTML="Naslov vjesti mora imati između 5 i 30 znakova!<br>";
                slanje = false;
            }
            else{
                document.getElementById("sazetak").style.border ="1px solid black";
                document.getElementById("porukasazetak").innerHTML="";
            };
            if (document.getElementById("kategorija").selectedIndex == 0){
                document.getElementById("kategorija").style.border ="2px dashed red";
                document.getElementById("porukakategorija").innerHTML="Morate odabrati kategoriju!<br>";
                slanje = false;
            }
            else{
                document.getElementById("kategorija").style.border ="1px solid black";
                document.getElementById("porukakategorija").innerHTML="";
            };
            if (document.getElementById("tekst").value.length < 1){
                document.getElementById("tekst").style.border ="2px dashed red";
                document.getElementById("porukatekst").innerHTML="Tekst vijesti ne smije biti prazan!<br>";
                slanje = false;
            }
            else{
                document.getElementById("tekst").style.border ="1px solid black";
                document.getElementById("porukatekst").innerHTML="";
            };
            if (document.getElementById("slika").value == ""){
                document.getElementById("slika").style.border ="2px dashed red";
                document.getElementById("porukaslika").innerHTML="Slika mora biti odabrana!<br>";
                slanje = false;
            }
            else{
                document.getElementById("slika").style.border ="0px solid black";
                document.getElementById("porukaslika").innerHTML="";
            }

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
    <div class="content">
        <h4><a href="unos.php">ADMINISTRACIJA</a></h4>
        <h2>ADMINISTRACIJA</h2>
        <?php
            if (isset($_SESSION['username'])){
                if ($_SESSION['level'] == 0){
                    echo $_SESSION['username'] . ', nažalost nemate razinu admina, te ne možete pristupiti administraciji. <a href="odjava.php"> (odjavite se)</a>';
                    echo '<br><br> <a href="index.php">Vrati me</a>';
                }
                else if ($_SESSION['level'] == 1){
                    echo '<p> Prijavljeni ste kao ' . $_SESSION['username'] . '<a href="odjava.php"> (odjavite se)</a></p><br>
                    <form id="unos" name="unos" method="post" onsubmit="return validacija();" enctype="multipart/form-data" action="skripta.php" class="forma" >
                    <div class="form-naslov">
                        <span id="porukanaslov"></span>
                        <p>Naslov vijesti: </p>
                        <input type="text" name="naslov" id="naslov">
                    </div><br>
                    <div class="form-item">
                        <span id="porukasazetak"></span>
                        <p>Sažetak vijesti: </p>
                        <textarea name="sazetak" id="sazetak" rows="5" cols="40"></textarea><br><br>
                    </div>
                    <div class="form-item">
                        <span id="porukakategorija"></span>
                        <p>Odaberite kategoriju: </p>
                        <select name="kategorija" id="kategorija">
                            <option value="" disabled selected>Odabir kategorije</option>
                            <option value="politique">Politique</option>
                            <option value="sport">Sport</option>
                        </select><br><br>
                    </div>
                    <div class="form-item">
                        <span id="porukatekst"></span>
                        <p>Tekst vijesti: </p>
                        <textarea name="tekst" id="tekst" rows="15" cols="40"></textarea><br><br>
                    </div>
                    <div class="form-item">
                        <span id="porukaslika"></span>
                        <p>Upload slike: </p>
                        <input type="file" name="slika" id="slika"><br><br>
                    </div>
                    <div class="form-item">
                        <input type="checkbox" id="prikaz" name="prikaz">
                        <label for="prikaz">Vijest će se prikazati na stranici. </label><br><br>
                    </div>
                    <div class="form-item">
                        <input type="submit" name="submit" id="submit" value="Pošalji" class="button">
                    </div>
                </form>'; 
                }
            }
            else{
                echo "Niste prijavljeni. <a href='registracija.php'>Prijavite se.</a>";
            };
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