<?php
require "../config/session.php";
require "../config/router.php";
require "../config/uuid.php";
require "../vendor/autoload.php";


$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$client = new Google\Client();

$client->setClientId($_ENV["GOOGLE_OAUTH_CLIENT_ID"]);
$client->setClientSecret($_ENV["GOOGLE_OAUTH_CLIENT_SECRET"]);
$client->setRedirectUri(BASE_URL);

if (!isset($_GET["code"])) {
  header("./auth.php");
  exit;
}

$token = $client->fetchAccessTokenWithAuthCode($_GET["code"]);
$client->setAccessToken($token["access_token"]);

$oauth = new Google\Service\Oauth2($client);
$userinfo = $oauth->userinfo->get();

$email = $userinfo->email;
$id = generate_uuidv4();
$pfp = $userinfo->picture;
$username = $userinfo->name . " " . $userinfo->familyName . " " . $userinfo->givenName;

$pfp_data = file_get_contents($pfp);
$mime = "image/jpeg";

$base64_pfp = base64_encode($pfp_data);

$user = User::createUserFromGoogle($id, $email, $username);
User::setProfilePicture($id, $pfp_data, $mime);
$_SESSION["current_user_id"] = $id;

header("Location: ../");