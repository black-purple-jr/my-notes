<?php
declare(strict_types=1);

require_once __DIR__ . "/../vendor/autoload.php";

use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . "/..");
$dotenv->load();

class DB
{
  private static ?PDO $connection = null;

  protected static function connect(): PDO
  {
    if (self::$connection === null) {
      $host = $_ENV["DB_HOST"] ?? "localhost";
      $port = $_ENV["DB_PORT"] ?? "3306";
      $database = $_ENV["DB_DATABASE"] ?? "my_notes";
      $username = $_ENV["DB_USERNAME"] ?? "root";
      $password = $_ENV["DB_PASSWORD"] ?? "";

      $dsn = "mysql:host={$host};port={$port};dbname={$database};charset=utf8mb4";

      try {
        self::$connection = new PDO(
          $dsn,
          $username,
          $password,
          [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
          ]
        );
      } catch (PDOException $e) {
        error_log("Database connection failed: " . $e->getMessage());

        throw new RuntimeException(
          "Unable to connect to the database."
        );
      }
    }

    return self::$connection;
  }
}