<?php
header("Access-Control-Allow-Origin: *");
set_time_limit(0);
$resp = array();
$resp['fullpath'] = "";
$resp['type'] = "";

if (isset($_FILES['upload'])) {
    $source = $_FILES["upload"]["tmp_name"];
    $filename = $_FILES["upload"]["name"];
    //file extension
    $ext =  pathinfo($_FILES['upload']['name'], PATHINFO_EXTENSION);
    //file type
    $type = mime_content_type($_FILES['upload']['tmp_name']);
    $resp['type'] = $type;
    $resp['ext'] = $ext;
    $resp['filename'] = $filename;
    // upload directory
    $dir = "../files/";
    if(!is_dir($dir))
        mkdir($dir, 0700, true);
    $destination = $dir . $filename;
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