<?php

$con = MySQLi_connect(
    "localhost",
    "root",
    "",
    "ag_php_livesearch"
);
//Check connection
if (MySQLi_connect_errno()) {
    die("Failed to connect to MySQL: " . MySQLi_connect_error());
}
