<?php
	    include "koneksi.php";
	    
	    
	    $sql = "SELECT * FROM tb_kabupaten";
    	$res = mysqli_query($koneksi,$sql);
	    $result = array();
        $url = "https://banyu.center/wisata/images/kabupaten/";
 
        while($row = mysqli_fetch_assoc($res))
        {
        
            $temp = array(
            "id"=>$row['id'],
            "nama_kabupaten"=>$row['nama_kabupaten'],
            "foto"=>$url.$row['foto']
            
            );
            array_push($result,$temp);
        }
        $data = json_encode($result);
        echo $data;
?>
