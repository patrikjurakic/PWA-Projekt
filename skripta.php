<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Article - Le Monde</title>
    <link rel="icon" href="images/favicon.jpg" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="article.css">
</head>
<body>
    <div class="main">
    <header class="header">
          <h1><a href="index.html"><img src="images/naslov.png" alt="LeMonde" width="15%"></a></h1>
          <div class="line">
                <div class="navigation">
                <a href="index.php">HOME</a>
                <a href="politique.php">POLITIQUE</a>
                <a href="sport.php">SPORT</a>
                <a href="unos.html">ADMINISTRACIJA</a>
                </div>
          </div>
    </header>
    <div class="content">
        <?php
        $dbc = mysqli_connect("localhost", "root", NULL, "projekt") or 
        die("Error connecting to MySQL server.". mysqli_connect_error());

        if (isset($_POST["submit"])){
            $naslov = $_POST["naslov"];
            $sazetak = $_POST["sazetak"];
            $kategorija = $_POST["kategorija"];
            $tekst = $_POST["tekst"];
            if (isset($_POST["prikaz"])){
                $prikaz = $_POST["prikaz"];
            }
            else {
                $prikaz = "";
            }
            //SLIKA
            if (isset($_FILES['slika'])){
                $slika = $_FILES['slika']['name'];
                $target = "images/".basename($slika);
                move_uploaded_file($_FILES['slika']['tmp_name'], $target);
            }

        
            $sql = "INSERT INTO lemonde (naslov, sazetak, kategorija, tekst, slika, prikaz)
            VALUES ('$naslov', '$sazetak', '$kategorija', '$tekst', '$slika', '$prikaz')";
                if (mysqli_query($dbc, $sql)) {
                    echo "<br>Upis uspješan!";
                } else {
                    echo "Error: " . $sql . "<br>" . mysqli_error($dbc);
                }
            };
            

        ?>
        <?php $kategorija = strtoupper($kategorija); ?>
        <h4><a href="<?php echo $kategorija ?>.php"><?php echo $kategorija ?></a></h4>
        <h2><?php echo $naslov; ?></h2>
        <p><?php echo $sazetak; ?></p><br>
        <img src="images/<?php echo $slika ?>"><br>
        <p>
        <?php echo $tekst; ?>
        </p><br>
        
    </div>
    </div>
    <footer class="footer">
        <div>
            <h4>SUIVEZ LE MONDE</h4>
        </div>
    </footer>
</body>
</html>