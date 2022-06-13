<?php
header('content-type: application/json');
 include "koneksi.php";
  
 $email = $_GET['email'];
 $password = $_GET['password'];
 $id_level = $_GET['id_level'];;
   
 
 $sql="SELECT id,email,password,id_level FROM tb_user where email='$email' and password='$password' and id_level='3'";
 $result=mysqli_query($koneksi,$sql);
 while($hasil=mysqli_fetch_assoc($result)) {
  $output[]=$hasil;
 }
 $hasil =json_encode($output);
 echo "{\"login_event\":" . $hasil . "}";
  
?>