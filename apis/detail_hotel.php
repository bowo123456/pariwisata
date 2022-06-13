<?php
	    include "koneksi.php";
	    $id=$_GET['id'];
	    
	    $sql = "SELECT * FROM tb_hotel where id='$id'";
    	$res = mysqli_query($koneksi,$sql);
	    $result = array();
        $url = "https://banyu.center/wisata/images/hotel/";
        $harga = "Tarif : Rp. ";
 
        while($row = mysqli_fetch_assoc($res))
        {
        
            $temp = array(
            "id"=>$row['id'],
            "id_kabupaten"=>$row['id_kabupaten'],
            "nama_hotel"=>$row['nama_hotel'],
            "tipe_hotel"=>$row['tipe_hotel'],
            "tarif"=>$harga.$row['tarif'],
            "alamat"=>$row['alamat'],
            "fitur_satu"=>$row['fitur_satu'],
            "fitur_dua"=>$row['fitur_dua'],
            "fitur_tiga"=>$row['fitur_tiga'],
            "fitur_empat"=>$row['fitur_empat'],
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
        echo "{\"detail_hotel\":" . $data . "}";
?>
