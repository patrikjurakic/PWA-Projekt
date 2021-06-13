<?php
    session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Le Monde - Politique</title>
    <link rel="icon" href="images/favicon.jpg" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="politique.css">
</head>
<body>
    <?php
        $dbc = mysqli_connect("localhost", "root", NULL, "projekt") or 
        die("Error connecting to MySQL server.". mysqli_connect_error());
    ?>
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
        <h2>Politique</h2>
        <p class="sub">
                Političke novosti.
        </p>
        <section class="flex-container">
            <?php
                $query = "SELECT * 
                FROM lemonde 
                WHERE kategorija = 'politique'
                ORDER BY id DESC";
                $result = $dbc->query($query);
                while($row = $result->fetch_array()){
                if ($row['prikaz'] == "on"){
                echo 
                '<article class="slika">
                <a href = "article.php?post=' . $row['id']. '">
                <img src="images/'.$row['slika'].'"><br>
                <p>'.$row['naslov'].'</p>
                </a>
                </article>';
                }
            }
            ?>
        </section>
    </div>
    </div>
    <footer class="footer">
        <div>
            <h4>SUIVEZ LE MONDE</h4>
        </div>
    </footer>
</body>
</html>