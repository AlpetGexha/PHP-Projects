<?php

/*
 * @author Shahrukh Khan
 * @website http://www.thesoftwareguy.in
 */

require_once("config.php");

$isd_code = (trim($_GET["isocode"]) <> "" ) ? trim($_GET["isocode"]) : "";
$arr = array();

$sql = "SELECT `countries_id`, `countries_name`, `countries_iso_code`, `countries_isd_code` "
        . " FROM `countries` WHERE 1 AND countries_iso_code LIKE :iso  ORDER BY countries_name ASC";
try {
    $stmt = $DB->prepare($sql);
    $stmt->bindValue(":iso", $isd_code);
    $stmt->execute();
    $results = $stmt->fetchAll();
    
} catch (Exception $ex) {
    echo($ex->getMessage());
}
if (count($results) > 0 ) {
    $arr = array(
        "c_id" => $results[0]["countries_id"],
        "c_name" => $results[0]["countries_name"],
        "c_iso" => strtolower($results[0]["countries_iso_code"]),
        "c_isd" => $results[0]["countries_isd_code"],
    );
}
echo json_encode($arr);
exit;
?>
