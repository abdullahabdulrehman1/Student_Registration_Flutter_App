<?php
require("db.php");
$sql = "Select *from students";
$results = mysqli_query($conn,$sql);
$records = [];
whilte ($rows = mysqli_fetech_assoc($results)){
    $results[]= $rows;
}
echo json_encode($records);
?>