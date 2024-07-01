<?php
require_once ("dao.php");
require_once ("utility.php");




if (isset($_POST['trainer_details'])) {

  
    $profile_id=$_POST['name'].$_POST['pin'];
    $table = "trainer";
    $data = array();
    $data['name'] = $name = $_POST['name'];
    $data['mobile'] = $mobile = $_POST['mobile'];
    $data['email'] = $email = $_POST['email'];
    $data['street'] = $street = $_POST['street'];
    $data['city'] = $city = $_POST['city'];
    $data['state'] = $state = $_POST['state'];
    $data['pin'] = $pin = $_POST['pin'];
    $data['exp'] = $pin = $_POST['exp'];
    $data['aadhar'] = $aadhaar = $_POST['aadhaar'];
       

    $data['profile'] = uploadImage($_FILES["profileimg"], $profile_id);
    $data['aadharfront'] = uploadImage($_FILES["aadhaarfront"], "aadhaarfront" . $profile_id);
    $data['aadharback'] = uploadImage($_FILES["aadhaarback"], "aadhaarback" .  $profile_id);


         
           
   
    if (insert($table, $data)) {
       
        header("location:showalltrainer.php?saved='success'");
    } else {
        echo "fail";
        header("location:showalltrainer.php?failed='error'");
    }



}

if (isset($_POST['edit_admission'])) {
    $id=$_POST['edit_admission'];
    $profile_id=$_POST['name'].$_POST['pin'];
    $data['name'] = $name = $_POST['name'];
    $data['mobile'] = $mobile = $_POST['mobile'];
    $data['parentmobile'] = $mobile = $_POST['parentmobile'];
    $data['email'] = $email = $_POST['email'];
    $data['street'] = $street = $_POST['street'];
    $data['city'] = $city = $_POST['city'];
    $data['state'] = $state = $_POST['state'];
    $data['pin'] = $pin = $_POST['pin'];
    $data['aadhaar'] = $aadhaar = $_POST['aadhaar'];
   


    if ($_FILES["profileimg"]['name'] != "") {
        $data['profile'] = uploadImage($_FILES["profileimg"], $profile_id);
    }
    if ($_FILES["aadhaarfront"]['name'] != "") {
        $data['aadhaarfront'] = uploadImage($_FILES["aadhaarfront"], "aadhaarfront" .  $profile_id);
    }
    if ($_FILES["aadhaarback"]['name'] != "") {
        $data['aadhaarback'] = uploadImage($_FILES["aadhaarback"], "aadhaarback" .  $profile_id);
    }



    if (update("trainer", $data, "id='$id'")) {
        header("location:showalltrainer.php?saved='success'");
        // echo "success";
    } else {
        header("location:showalltrainer.php?failed='error'");
        // echo "fail";
    }
}


if (isset($_GET['del'])) {
    $id = $_GET['del'];
    if (deleteRecord("trainer", "id='$id'")) {
        header("location:showalltrainer.php?saved='success'");
    } else {
        header("location:showalltrainer.php?failed='error'");
    }
}

?>