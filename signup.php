<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up | Flavor Forge</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="css/footer.css">
  <link rel="stylesheet" href="css/login.css">
</head>
<body>

  <?php include 'partials/header.php'; ?>

  <main class="main">
    <div class="auth-container">
      <h2>Create Account</h2>

      <?php if (isset($_SESSION['error'])): ?>
        <div class="error-message">
          <?= $_SESSION['error']; unset($_SESSION['error']); ?>
        </div>
      <?php endif; ?>

      <form class="auth-form" method="POST" action="backend/signup_process.php">
        <input type="text" name="first_name" placeholder="First Name" required>
        <input type="text" name="last_name" placeholder="Last Name" required>
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Sign Up</button>
      </form>

      <div class="auth-links">
        <p>Already have an account? <a href="login.php">Login</a></p>
      </div>
    </div>
  </main>

  <?php include 'partials/footer.php'; ?>
  <script src="js/header.js"></script>
  <script src="js/theme.js"></script>

</body>
</html>
