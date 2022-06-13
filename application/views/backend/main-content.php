
<div class="content-wrapper" >
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Dashboard
    <small>Control panel</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="<?php echo base_url().'home_admin';?>"><i class="fa fa-dashboard"></i> Home</a></li>
    <li class="active">Dashboard</li>
  </ol>
</section>

<!-- Main content -->
<section class="content">
  <!-- Small boxes (Stat box) -->
  <div class="row">
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>550</h3>

          <p>Tempat Wisata</p>
        </div>
        <div class="icon">
          <i class="ion ion-bag"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-green">
        <div class="inner">
          <h3>35<sup style="font-size: 20px"></sup></h3>

          <p>Kabupaten</p>
        </div>
        <div class="icon">
          <i class="ion ion-stats-bars"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-yellow">
        <div class="inner">
          <h3>634</h3>

          <p>Hotel</p>
        </div>
        <div class="icon">
          <i class="ion ion-person-add"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-red">
        <div class="inner">
          <h3>455</h3>

          <p>Kuliner</p>
        </div>
        <div class="icon">
          <i class="ion ion-pie-graph"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
  </div>
  <!-- /.row -->
  <!-- Main row -->
  <div class="row">
    <!-- Left col -->
    <section class="col-lg-12 connectedSortable">
      
    <table class="table table-striped table-bordered data display nowrap" id="data">
    <h2> DATA WISATA </h2>
    <a href="<?php echo base_url(). 'wisata/tambah/';?>"><button class="btn btn-warning">Tambah Wisata</button></a>
    <hr>
    <thead>
      <tr>
        <th>No</th>
        <th>FOTO</th>
        <th>NAMA</th>
        <th>HARGA</th>
        <th>ALAMAT</th>
        <th>AKSI</th>
      </tr>
    </thead>
    <tbody>
      <?php
  $no = 1;
  foreach($wisata as $s){
  ?>
  <tr>
    <td><?php echo $no++ ?></td>
    <td><img src="<?php echo base_url(). 'assets/images/wisata/'?><?php echo $s->foto ?>" width='60' height='60'></td>
    <td><?php echo $s->nama_wisata ?></td>
    <td><?php echo $s->harga_tiket ?></td>
    <td><?php echo $s->alamat ?></td>
    <td>
      <a href="<?php echo base_url(). 'wisata/edit/'.$s->id; ?>"><button class="btn btn-primary">Edit</button></a>
      <a href="<?php echo base_url(). 'wisata/hapus/'.$s->id; ?>"><button class="btn btn-danger">Hapus</button></a>
    </td>
  </tr>
  <?php } ?>
    </tbody>
  </table>
 
  
 
    </section>
    <!-- right col -->
  </div>
  <!-- /.row (main row) -->

</section>
<!-- /.content -->
</div>
<script type="text/javascript">
    jQuery.noConflict();
    jQuery(document).ready(function($){
      $('.data').DataTable(
        {
          "scrollX": true
        }
      );
  
    });
  </script>
