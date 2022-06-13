<?php
	    include "koneksi.php";
	    
	    
	    $sql = "SELECT * FROM tb_hotel";
    	$res = mysqli_query($koneksi,$sql);
	    $result = array();
        $url = "https://banyu.center/wisata/images/hotel/";
 
        while($row = mysqli_fetch_assoc($res))
        {
        
            $temp = array(
            "id"=>$row['id'],
            "id_kabupaten"=>$row['id_kabupaten'],
            "nama_hotel"=>$row['nama_hotel'],
            "foto"=>$url.$row['foto']
            
            );
            array_push($result,$temp);
        }
        $data = json_encode($result);
        echo $data;
?>
