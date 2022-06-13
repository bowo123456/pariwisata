
<?php
/**
 * Namafile : config.php 
 * ----------------------------*/
 
 $dbhost = 'localhost'; 
 $dbuser = 'root';     // ini berlaku di xampp
 $dbpass = '';         // ini berlaku di xampp
 $dbname = 'db_pariwisatajateng';
 
// melakukan koneksi ke database
 $koneksi = new mysqli($dbhost,$dbuser,$dbpass,$dbname);
 
// cek koneksi yang kita lakukan berhasil atau tidak
 if ($koneksi->connect_error) {
    // jika terjadi error, matikan proses dengan die() atau exit();
    die('Maaf koneksi gagal: '. $koneksi->connect_error);
}