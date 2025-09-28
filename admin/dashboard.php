<?php
session_start();
require '../backend/db.php';


// Fetch counts
$totalUsers = $pdo->query("SELECT COUNT(*) FROM users")->fetchColumn();
$pendingRequests = $pdo->query("SELECT COUNT(*) FROM users WHERE role='user'")->fetchColumn();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="../css/admin.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="d-flex">
  <!-- Sidebar -->
  <div class="bg-dark text-white p-3 vh-100" style="width:250px;">
    <h3 class="text-center">Admin Panel</h3>
    <ul class="nav flex-column mt-4">
      <li class="nav-item"><a href="index.php" class="nav-link text-white">📊 Dashboard</a></li>
      <li class="nav-item"><a href="users.php" class="nav-link text-white">👥 Manage Users</a></li>
      <li class="nav-item"><a href="recipes.php" class="nav-link text-white">🍲 Manage Recipes</a></li>
      <li class="nav-item"><a href="settings.php" class="nav-link text-white">⚙️ Settings</a></li>
      <li class="nav-item"><a href="logout.php" class="nav-link text-danger">🚪 Logout</a></li>
    </ul>
  </div>

  <!-- Main Content -->
  <div class="p-4 flex-grow-1">
    <h1>Welcome, Admin!</h1>
    <p>Here’s a quick overview of the system.</p>

    <div class="row g-4">
      <div class="col-md-4">
        <div class="card text-white bg-primary">
          <div class="card-body">
            <h5 class="card-title">Total Users</h5>
            <p class="card-text fs-3"><?= $totalUsers ?></p>
          </div>
        </div>
      </div>
      
      <div class="col-md-4">
        <div class="card text-white bg-success">
          <div class="card-body">
            <h5 class="card-title">Total Recipes</h5>
            <p class="card-text fs-3"><?= $totalRecipes ?></p>
          </div>
        </div>
      </div>
      
      <div class="col-md-4">
        <div class="card text-white bg-warning">
          <div class="card-body">
            <h5 class="card-title">Pending Requests</h5>
            <p class="card-text fs-3"><?= $pendingRequests ?></p>
          </div>
        </div>
      </div>
    </div>
    
  </div>
</div>

</body>
</html>
