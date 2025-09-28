<?php
session_start();
require 'db.php'; // database connection

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first = trim($_POST['first_name']);
    $last = trim($_POST['last_name']);
    $email = trim($_POST['email']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    try {
        $stmt = $pdo->prepare("INSERT INTO users (first_name, last_name, email, password, role) VALUES (?, ?, ?, ?, 'user')");
        $stmt->execute([$first, $last, $email, $password]);

        $_SESSION['success'] = "Account created! You can now log in.";
        header("Location: ../login.php");
        exit;
    } catch (PDOException $e) {
        $_SESSION['error'] = "Email already exists.";
        header("Location: ../signup.php");
        exit;
    }
}
