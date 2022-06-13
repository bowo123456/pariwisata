<?php
	    include "koneksi.php";
	    
	    
	    $sql = "SELECT * FROM tb_nama_wisata";
    	$res = mysqli_query($koneksi,$sql);
	    $result = array();
        $url = "https://banyu.center/wisata/images/wisata/";
 
        while($row = mysqli_fetch_assoc($res))
        {
        
            $temp = array(
            "id"=>$row['id'],
            "id_kabupaten"=>$row['id_kabupaten'],
            "nama_wisata"=>$row['nama_wisata'],
            "foto"=>$url.$row['foto']
            
            );
            array_push($result,$temp);
        }
        $data = json_encode($result);
        echo $data;
?>
