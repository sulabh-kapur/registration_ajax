<?php
include('../connection.php');
$ajax_response = new \stdClass();
$ajax_response->is_success = false;
$output = [];
$query = "SELECT * FROM register ";
$result = mysqli_query($connection,$query);


while($rows = mysqli_fetch_assoc($result)){
   
    $output[]=$rows;
    $ajax_response->list = $output;


   if($output){
            $ajax_response->is_success = true;
            $ajax_response->message = 'Registered Successfully!';
        }
    }
        
        print_r(json_encode($ajax_response));
        exit;
    
?>
