<?php
require "../config/session.php";
require "../models/User.php";

if (!isset($_SESSION["current_user_id"])) {
  header("Location: ../auth/auth.php");
  exit;
}

$current_user_id = $_SESSION["current_user_id"];
$check = User::userExists($current_user_id);

if (!$check) {
  header("Location: ../auth/auth.php");
  exit;
}

$user = User::getUserById($current_user_id);

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Profile - My Notes</title>
  <link rel="icon" type="image/svg+xml" href="../assets/favicon.svg" />
  <link rel="stylesheet" href="../src/css/profile.css" />
</head>

<body>
  <header>
    <a href="../">
      <h1>
        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="none" stroke="#5b5eeb" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-notebook-text-icon lucide-notebook-text">
          <path d="M2 6h4" />
          <path d="M2 10h4" />
          <path d="M2 14h4" />
          <path d="M2 18h4" />
          <rect width="16" height="20" x="4" y="2" rx="2" />
          <path d="M9.5 8h5" />
          <path d="M9.5 12H16" />
          <path d="M9.5 16H14" />
        </svg>
        My Notes - <?php echo $user["username"]; ?>
      </h1>
    </a>
    <a href="../" class="back">
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-move-left-icon lucide-move-left">
        <path d="M6 8L2 12L6 16" />
        <path d="M2 12H22" />
      </svg>
      back to home page
    </a>
  </header>
  <main>
    <div class="content">
      <h2 class="title">your personal info</h2>
      <div class="general-info">
        <div class="pic">
          <div class="pfp">
            <?php if ($user['profile_picture']): ?>
              <img src="data:<?= htmlspecialchars($user['profile_picture_mime']) ?>;base64,<?= $user['profile_picture'] ?>"
                alt="Profile picture" width="150" height="150">
            <?php else: ?>
              <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width=".8" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-circle-user-icon lucide-circle-user" id="profile">
                <circle cx="12" cy="12" r="10" />
                <circle cx="12" cy="10" r="3" />
                <path d="M7 20.662V19a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v1.662" />
              </svg>
            <?php endif; ?>
          </div>
        </div>
        <div class="info">
          <div class="username"><?php echo htmlspecialchars($user["username"]); ?></div>
          <div class="email"><?php echo htmlspecialchars($user["user_email"]); ?></div>
        </div>
      </div>
      <h2 class="title">update your personal info</h2>
      <form action="" method="post" class="box">
        <div class="row">
          <label for="pfpInput">Profile picture</label>
          <input type="file" name="user_pfp" id="pfpInput" />

          <label for="usernameInput">Username</label>
          <input type="text" id="usernameInput" placeholder="Enter your new username" value="<?php echo htmlspecialchars($user["username"]); ?>">

          <label for="emailInput">E-mail</label>
          <input type="email" id="emailInput" placeholder="Enter your new Email" value="<?php echo htmlspecialchars($user["user_email"]); ?>">

          <label for="passwordInput">New password</label>
          <input type="password" id="passwordInput" name="new_pwd" placeholder="Enter your new password" />

          <label for="passwordConfirmationInput">Confirm new password</label>
          <input type="password" id="passwordConfirmationInput" name="confirm_new_pwd" placeholder="Confirm your new password" />
        </div>
        <div class="row">
          <button type="submit">Update you profile</button>
        </div>
      </form>
      <h2 class="title">danger zone</h2>
      <div class="box">
        <div class="actions">
          <a href="../auth/logout.php">
            Delete your account
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#cf272f" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-trash2-icon lucide-trash-2">
              <path d="M10 11v6" />
              <path d="M14 11v6" />
              <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6" />
              <path d="M3 6h18" />
              <path d="M8 6V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2" />
            </svg>
          </a>
        </div>
      </div>
    </div>
  </main>
</body>

</html>