<?php
$response= array();
header('content-type: application/json');
include("koneksi.php");

$id = $_POST['id'];
$nama = $_POST['nama'];
$email = $_POST['email'];
$password = $_POST['password'];
$no_telp = $_POST['no_telp'];

$sql = "INSERT INTO tb_user(nama,email,password,no_telp,id_level) VALUES ('$nama','$email','$password','$no_telp','3')";
$result = mysqli_query($koneksi,$sql);

?>
