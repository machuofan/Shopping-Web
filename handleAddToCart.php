<?php
session_start();
$total_num = array();
if ($_GET['itemID'] == 0 && $_GET['updateNumber'] == 0) {
  if (!isset($_SESSION['shoppingCart'])) {
    $total_num[0] = 0;
  }
  else {
    $total_num[0] = array_sum($_SESSION['shoppingCart']);
  }

  print json_encode($total_num);
}

else if ($_GET['itemID'] == -1 && $_GET['updateNumber'] == 0) {
  session_destroy();
}

else {
  $id = $_GET['itemID'];
  if (array_key_exists($id, $_SESSION['shoppingCart'])) {
    $_SESSION['shoppingCart'][$id] = $_SESSION['shoppingCart'][$id] + intval($_GET['updateNumber']);
    if ($_SESSION['shoppingCart'][$id] == 0) {
      unset($_SESSION['shoppingCart'][$id]);
    }
  }
  else {
    $_SESSION['shoppingCart'][$id] = 1;
  }
  $total_num[0] = array_sum($_SESSION['shoppingCart']);
  print json_encode($total_num);
}


?>
