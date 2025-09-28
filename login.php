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
  <title>Login | Flavor Forge</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="css/footer.css">
  <link rel="stylesheet" href="css/login.css">
</head>
<body>

  <?php include 'partials/header.php'; ?>

  <main class="main">
    <div class="auth-container">
      <h2>Sign In</h2>

      <?php if (isset($_SESSION['error'])): ?>
        <div class="error-message">
          <?= $_SESSION['error']; unset($_SESSION['error']); ?>
        </div>
      <?php endif; ?>

      <form class="auth-form" method="POST" action="backend/login_process.php">
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
      </form>

      <div class="auth-links">
        <p>Don't have an account? <a href="signup.php">Sign Up</a></p>
      </div>
    </div>
  </main>

  <?php include 'partials/footer.php'; ?>
  <script src="js/header.js"></script>
  <script src="js/theme.js"></script>

</body>
</html>
