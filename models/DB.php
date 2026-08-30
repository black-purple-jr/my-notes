<?php
declare(strict_types=1);

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . "/..");
$dotenv->load();

class DB
{
  protected static function connect(): PDO
  {
    $server = "db";
    $username = "my_notes_user";
    $password = $_ENV["DB_PASSWORD"];
    $database = "my_notes";
    $charset = "utf8mb4";

    try {
      $dsn = "mysql:host=$server;dbname=$database;charset=$charset";
      $pdo = new PDO($dsn, $username, $password);
      $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      return $pdo;
    } catch (Exception $e) {
      echo "Connection failed : " . $e->getMessage();
      throw $e;
    }
  }
}