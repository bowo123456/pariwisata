<?php
	    include "koneksi.php";
	    $id_kabupaten = $_GET['id_kabupaten'];
	    
	    $sql = "SELECT * FROM tb_nama_wisata WHERE id_kabupaten='$id_kabupaten'";
    	$res = mysqli_query($koneksi,$sql);
	    $result = array();
        $url = "https://banyu.center/wisata/images/wisata/";
 
        while($row = mysqli_fetch_assoc($res))
        {
        
            $temp = array(
            "id"=>$row['id'],
            "id_kabupaten"=>$row['id_kabupaten'],
            "id_jenis_wisata"=>$row['id_jenis_wisata'],
            "nama_wisata"=>$row['nama_wisata'],
            "harga_tiket"=>$row['harga_tiket'],
            "jam_buka"=>$row['jam_buka'],
            "jam_tutup"=>$row['jam_tutup'],
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
        echo $data;
?>
