<?php

require_once __DIR__ . "/../vendor/autoload.php";

use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . "/..");
$dotenv->safeLoad();

define(
  "BASE_URL",
  rtrim($_ENV["BASE_URL"] ?? "http://localhost:8080", "/")
);
