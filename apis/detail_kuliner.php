<?php
	    include "koneksi.php";
	    $id = $_GET['id'];
	    
	    $sql = "SELECT * FROM tb_kuliner where id='$id'";
    	$res = mysqli_query($koneksi,$sql);
	    $result = array();
        $url = "https://banyu.center/wisata/images/kuliner/";
        $harga = "Harga : Rp. ";
        
        while($row = mysqli_fetch_assoc($res))
        {
        
            $temp = array(
            "id"=>$row['id'],
            "id_kabupaten"=>$row['id_kabupaten'],
            "nama_kuliner"=>$row['nama_kuliner'],
            "jenis_kuliner"=>$row['jenis_kuliner'],
            "harga"=>$harga.$row['harga'],
            "alamat"=>$row['alamat'],
            "no_telp"=>$row['no_telp'],
            "no_wa"=>$row['no_wa'],
            "instagram"=>$row['instagram'],
            "facebook"=>$row['facebook'],
            "twitter"=>$row['twitter'],
            "email"=>$row['email'],
            "website"=>$row['website'],
            "foto"=>$url.$row['foto'],
            "video"=>$row['video'],
            "keterangan"=>$row['keterangan']
            
            );
            array_push($result,$temp);
        }
        $data = json_encode($result);
        echo "{\"detail_kuliner\":" . $data . "}";
?>
