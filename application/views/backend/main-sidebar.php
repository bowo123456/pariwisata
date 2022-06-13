
<aside class="main-sidebar">
<!-- sidebar: style can be found in sidebar.less -->
<section class="sidebar">
  <!-- Sidebar user panel -->
  <div class="user-panel">
    <div class="pull-left image">
      <img src="<?php echo base_url().'assets/admin/dist/img/user2-160x160.jpg';?>" class="img-circle" alt="User Image">
    </div>
    <div class="pull-left info">
      <p>Ipung Purwono</p>
      <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
    </div>
  </div>
 
  <!-- sidebar menu: : style can be found in sidebar.less -->
  <ul class="sidebar-menu" data-widget="tree">
    <li class="header">MAIN NAVIGATION</li>
    <li><a href="<?php echo base_url().'home_admin';?>"><i class="fa fa-home"></i> <span>Home</span></a></li>

    
    <li><a href="<?php echo base_url().'kabupaten';?>"><i class="fa fa-map-marker"></i> <span>Kabupaten</span></a></li>

    <li class="treeview">
      <a href="<?php echo base_url().'wisata';?>">
        <i class="fa fa-suitcase "></i>
        <span>Wisata</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        
        <li><a href="<?php echo base_url().'wisata';?>"><i class="fa fa-circle-o"></i> Data Wisata</a></li>
        <li><a href="<?php echo base_url().'wisata/kategori';?>"><i class="fa fa-circle-o"></i> Kategori Wisata</a></li>
        
      </ul>
    </li>

    <li><a href="<?php echo base_url().'hotel';?>"><i class="fa fa-hotel"></i> <span>Hotel</span></a></li>
    <li><a href="<?php echo base_url().'kuliner';?>"><i class="fa fa-cutlery"></i> <span>Kuliner</span></a></li>
    
    
    
    <li class="treeview">
      <a href="<?php echo base_url().'user';?>">
        <i class="fa fa-user"></i> <span>User</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="<?php echo base_url().'user';?>"><i class="fa fa-circle-o"></i> Data User</a></li>
        </ul>
    </li>
        
  </ul>
</section>
<!-- /.sidebar -->
</aside>