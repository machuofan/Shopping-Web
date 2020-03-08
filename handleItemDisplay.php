<?php

  $conn = mysqli_connect('sophia.cs.hku.hk', 'cfma', '55556666') or die('Error! '.mysqli_error($conn));
  mysqli_select_db($conn, 'cfma') or die('Error! '.mysqli_error($conn));
  $category = $_GET['category'];
  $start_item = ($_GET['page'] - 1) * 2;
  $query = "SELECT * FROM catalog WHERE itemCategory = '$category' ORDER BY itemName LIMIT $start_item, 2;";
  $result = mysqli_query($conn, $query) or die('Error! '.mysql_error($conn));
  $query = "SELECT COUNT(*) FROM catalog WHERE itemCategory = '$category';";
  $result_2 = mysqli_query($conn, $query) or die('Error! '.mysql_error($conn));

  $item_array=array();
  while($row = mysqli_fetch_array($result)) {
    $item_array[] = array('itemID'=>$row['itemID'],'itemName'=> $row['itemName'],'itemDescription' => $row['itemDescription'] ,'itemPrice'=> $row['itemPrice'],'itemImage'=>$row['itemImage']);
  }
  if ($row = mysqli_fetch_array($result_2)) {
    $total = $row[0];
  }
  $item_array[2] = $total;
  print json_encode($item_array);

?>
