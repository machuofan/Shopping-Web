<?php

$conn = mysqli_connect('sophia.cs.hku.hk', 'cfma', '55556666') or die('Error! '.mysqli_error($conn));
mysqli_select_db($conn, 'cfma') or die('Error! '.mysqli_error($conn));
$query = "SELECT itemCategory FROM catalog;";
$result = mysqli_query($conn, $query) or die('Error! '.mysql_error($conn));
$raw_arr = array();
$cate_arr = array();
while($row = mysqli_fetch_array($result)) {
  array_push($raw_arr, $row[0]);
}
$raw_arr = array_unique($raw_arr);
foreach ($raw_arr as $element) {
  $a = $element;
  array_push($cate_arr, $a);
}
sort($cate_arr);
print json_encode($cate_arr);
?>
