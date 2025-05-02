<?php
header("Access-Control-Allow-Origin: *");
set_time_limit(0);
$resp = array();
$resp['fullpath'] = "";

if (isset($_FILES['upload'])) {
    $source = $_FILES["upload"]["tmp_name"];
    $filename = $_FILES["upload"]["name"];
    $destination = "../files/" . $filename;
    // Example:
    if(move_uploaded_file($source, $destination)){
        $resp['fullpath'] = $destination;
        $resp['status'] = "success";
    } else {
        $resp['status'] = "error";
    }
    $output = json_encode($resp);
    die($output);
    exit;
} else {
    $resp['status'] = "error";
    $output = json_encode($resp);
    die($output);
    exit;
}
?>