<?php
    session_start();
?>
<!DOCTYPE html>
<html>
    <?php
        $dbc = mysqli_connect("localhost", "root", NULL, "projekt") or 
        die("Error connecting to MySQL server.". mysqli_connect_error());
        
        $id = $_GET['post'];
        $query = "SELECT * FROM lemonde WHERE id = $id ";
        $result = $dbc->query($query);
        $row = $result->fetch_array()
    ?>
<head>
    <title><?php echo $row['naslov'] ?></title>
    <link rel="icon" href="images/favicon.jpg" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="article.css">
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
        <?php $kategorija = strtoupper($row['kategorija']); ?>
        <h4><a href="<?php echo $row['kategorija'] ?>.php"><?php echo $kategorija ?></a></h4>
        <h2><?php echo $row['naslov']; ?></h2>
        <p><?php echo $row['sazetak']; ?></p><br>
        <img src="images/<?php echo $row['slika'] ?>"><br>
        <p>
        <?php echo $row['tekst']; ?>
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