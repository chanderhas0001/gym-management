<?php
require_once ("dao.php");
if (isset($_GET['subscribe'])) {
    // $data
    $table = "subscriber";
    $data = array();
    $data['name'] = $name = $_GET['name'];
    $data['startdate'] = $mobile = $_GET['startdate'];
    $data['enddate'] = $email = $_GET['enddate'];
    $data['feereceiveddate'] = $feereceiveddate = $_GET['feereceiveddate'];
    $data['amount'] = $amount = $_GET['amount'];
    $data['status'] = $status = $_GET['status'];


    if (insert($table, $data)) {
        header("location:showallclient.php?saved='success'");
    } else {
        header("location:showallclient.php?failed='Error'");
    }
}

?>