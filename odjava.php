<?php
    session_start();
    session_destroy();
    header('Location: registracija.php');
    exit;
?>