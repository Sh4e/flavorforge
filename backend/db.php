<?php
$host = "localhost";
$dbname = "flavor_forge";
$username = "root";   // palitan depende sa MySQL user mo
$password = "";       // lagay password mo kung meron

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}
?>
