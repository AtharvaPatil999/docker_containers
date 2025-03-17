<?php
$conn = mysqli_connect('localhost', 'root', '', 'shop',3325);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Database connection successful!";
?>
