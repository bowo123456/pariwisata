<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login Administrator</title>


  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="<?php echo base_url().'assets/login/css/style.css'; ?>">


</head>

<body>
<div class="login-form">
<form action="<?php echo base_url('login/aksi_login'); ?>" method="post">
 <h1>Pariwisata Jateng</h1>
 <div class="form-group ">
   <input type="text" class="form-control" name="username" placeholder="Username " id="UserName">
   <i class="fa fa-user"></i>
 </div>
 <div class="form-group log-status">
   <input type="password" class="form-control" name="password" placeholder="Password" id="Passwod">
   <i class="fa fa-lock"></i>
 </div>


 <input type="submit" value="login" class="log-btn" >


</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="<?php base_url() ?>assets/bootstrap/js/login.js"></script>
</form>

</body>
</html>
