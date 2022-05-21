<?php
function TimeAgo($oldTime, $newTime)
{
    $timeCalc = strtotime($newTime) - strtotime($oldTime);
    if ($timeCalc >= (60 * 60 * 24 * 30 * 12 * 2)) {
        $timeCalc = intval($timeCalc / 60 / 60 / 24 / 30 / 12) . " years ago";
    } else if ($timeCalc >= (60 * 60 * 24 * 30 * 12)) {
        $timeCalc = intval($timeCalc / 60 / 60 / 24 / 30 / 12) . " year ago";
    } else if ($timeCalc >= (60 * 60 * 24 * 30 * 2)) {
        $timeCalc = intval($timeCalc / 60 / 60 / 24 / 30) . " months ago";
    } else if ($timeCalc >= (60 * 60 * 24 * 30)) {
        $timeCalc = intval($timeCalc / 60 / 60 / 24 / 30) . " month ago";
    } else if ($timeCalc >= (60 * 60 * 24 * 2)) {
        $timeCalc = intval($timeCalc / 60 / 60 / 24) . " days ago";
    } else if ($timeCalc >= (60 * 60 * 24)) {
        $timeCalc = " Dje";
    } else if ($timeCalc >= (60 * 60 * 2)) {
        $timeCalc = intval($timeCalc / 60 / 60) . " hours ago";
    } else if ($timeCalc >= (60 * 60)) {
        $timeCalc = intval($timeCalc / 60 / 60) . " hour ago";
    } else if ($timeCalc >= 60 * 2) {
        $timeCalc = intval($timeCalc / 60) . " minutes ago";
    } else if ($timeCalc >= 60) {
        $timeCalc = intval($timeCalc / 60) . " minute ago";
    } else if ($timeCalc > 0) {
        $timeCalc .= " seconds ago";
    }
    return $timeCalc;
}


$start = strtotime('2018-01-01');
$end = time();
$timestamp = mt_rand($start, $end);
// echo($timestamp);

echo date('Y-m-d H:i:s', $timestamp) . "<br>";


// echo "U postua  " . TimeAgo($row['date'], date("Y-m-d H:i:s"));

 echo "Posted  " . TimeAgo((date('Y-m-d H:i:s', $timestamp)), date("Y-m-d H:i:s")); 

?>