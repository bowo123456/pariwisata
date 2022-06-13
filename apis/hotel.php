<?php
	    include "koneksi.php";
	    
	    $id_kabupaten = $_GET['id_kabupaten'];
	    
	    $sql = "SELECT * FROM tb_hotel WHERE id_kabupaten = '$id_kabupaten'";
    	$res = mysqli_query($koneksi,$sql);
	    $result = array();
        $url = "https://banyu.center/wisata/images/hotel/";
 
        while($row = mysqli_fetch_assoc($res))
        {
        
            $temp = array(
            "id"=>$row['id'],
            "id_kabupaten"=>$row['id_kabupaten'],
            "nama_hotel"=>$row['nama_hotel'],
            "tipe_hotel"=>$row['tipe_hotel'],
            "tarif"=>$row['tarif'],
            "alamat"=>$row['alamat'],
            "no_telp"=>$row['no_telp'],
            "no_wa"=>$row['no_wa'],
            "instagram"=>$row['instagram'],
            "facebook"=>$row['facebook'],
            "twitter"=>$row['twitter'],
            "email"=>$row['email'],
            "website"=>$row['website'],
            "foto"=>$url.$row['foto'],
            "keterangan"=>$row['keterangan']
            
            );
            array_push($result,$temp);
        }
        $data = json_encode($result);
        echo $data;
?>
