<?php
include_once('includes/config.php');

$insertVisitorQuery = "INSERT INTO tblvisitors (timestamp) VALUES (NOW())";
if (mysqli_query($con, $insertVisitorQuery)) {
    echo "Record added successfully!";
} else {
    echo "Error adding record: " . mysqli_error($con);
}
?>
