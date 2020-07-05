<?php

class GrillDB {
  private $host = 'grill-db';
  private $dbName = 'grilldb';
  private $dbUser = 'alan';
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
