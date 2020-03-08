<?php
session_start();
if (isset($_SESSION['shoppingCart'])) {
  $conn = mysqli_connect('sophia.cs.hku.hk', 'cfma', '55556666') or die('Error! '.mysqli_error($conn));
  mysqli_select_db($conn, 'cfma') or die('Error! '.mysqli_error($conn));
  $keys = array_keys($_SESSION['shoppingCart']);
  $item_array = array();
  foreach ($keys as $value) {
    $query = "SELECT * FROM catalog WHERE itemID='$value';";
    $result = mysqli_query($conn, $query) or die('Error! '.mysql_error($conn));
    while($row = mysqli_fetch_array($result)) {
      $item_array[] = array('itemID'=>$row['itemID'],'itemName'=> $row['itemName'],'itemDescription'=>$row['itemDescription'],'itemPrice'=>$row['itemPrice'],'itemImage'=>$row['itemImage'],'quantity'=>$_SESSION['shoppingCart'][$row['itemID']]);
    }
  }
  print json_encode($item_array);
}

?>
