<?php
include('../connection.php');
$ajax_response = new \stdClass();
$ajax_response->is_success = false;
$id = $_POST['user_id'];
$query = "SELECT * FROM register WHERE id = $id";
$result =mysqli_query ($connection,$query);


if($result){
    $user_detail = mysqli_fetch_assoc($result);
    $ajax_response->is_success = true;
    $ajax_response->data=$user_detail;

}else {
    
        
    $ajax_response->error = $error;

}

print_r(json_encode($ajax_response));
exit;

?>