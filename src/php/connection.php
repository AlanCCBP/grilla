<?php

class GrillDB {
  private $host = 'localhost';
  private $dbName = 'db';
  private $dbUser = 'agus';
  private $dbPass = 'root';
  private $port = 3306;

  private $connection;

  public function __construct(){
    $this->connection = new mysqli(($this->host . ':' . $this->port), $this->dbUser, $this->dbPass, $this->dbName) or die(mysql_error);
  }

  public function getConnection(){
    return $this->connection;
  }
}
