<?php
require "../vendor/autoload.php";
require "../config/router.php";

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$client = new Google\Client;

$client->setClientId($_ENV["GOOGLE_OAUTH_CLIENT_ID"]);
$client->setClientSecret($_ENV["GOOGLE_OAUTH_CLIENT_SECRET"]);
$client->setRedirectUri(BASE_URL."auth/redirect.php");

$client->addScope("email");
$client->addScope("profile");

$url = $client->createAuthUrl();