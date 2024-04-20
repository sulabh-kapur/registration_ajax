<?php
include('../connection.php');
$ajax_response = new \stdClass();
$ajax_response->is_success = false;

$required_fields = ['f_name','l_name','email','pwd','postal','address'];
$error= [];
foreach($required_fields as $key =>$value){
    if(isset($_POST[$value]) AND empty($_POST[$value])){
            $error[$value] = $value." "."This field is required";
    }
}

if(count($error)==0){
    $f_name = $_POST['f_name'];
    $l_name = $_POST['l_name'];
    $email = $_POST['email'];
    $pwd = $_POST['pwd'];
    $postal = $_POST['postal'];
    $address = $_POST['address'];


    $sql = "SELECT * FROM  register WHERE email = '$email'";
    $query_result = mysqli_query($connection,$sql);

    $total_email = mysqli_num_rows($query_result);

    if($total_email > 0){

        $ajax_response->msg = "Email Already Exist";

    }else{

            $query = "INSERT INTO register(`f_name`,`l_name`,`email`,`pwd`,`postal`, `address`) VALUES('".$f_name."' , '".$l_name."' , '".$email."','".$pwd."','".$postal."', '".$address."')";
            $result =mysqli_query ($connection,$query);
        
        if($result){
            $ajax_response->is_success = true;
            $ajax_response->message = 'Registered Successfully!';
        }
                }
        
        
        } else {
        
            
            $ajax_response->error = $error;
        
        }
        
        print_r(json_encode($ajax_response));
        exit;
     
?>
