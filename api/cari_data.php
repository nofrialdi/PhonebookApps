<?php

 
	//Import File Koneksi Database
	require_once('koneksi.php');

	
	$query = $_GET['query']; 
	
	//Membuat SQL Query
	$sql = "SELECT * FROM telepon WHERE id LIKE '%$query%' 
          OR Foto LIKE '%$query%' 
          OR Jabatan LIKE '%$query%' 
          OR Nama LIKE '%$query%' 
          OR Pangkat_korps LIKE '%$query%'
          OR Agama LIKE '%$query%'
          OR Kesatuan LIKE '%$query%' 
          OR Matra LIKE '%$query%' 
          OR Alamat_kantor LIKE '%$query%' 
          OR No_telepon_kantor_1 LIKE '%$query%'
          OR No_telepon_kantor_2 LIKE '%$query%' 
          OR No_fax LIKE '%$query%' 
          OR Alamat_Rumah LIKE '%$query%' 
          OR No_telepon_rumah LIKE '%$query%'
          OR No_hp LIKE '%$query%' 
          OR Email LIKE '%$query%';";
	
	//Mendapatkan Hasil
	$r = mysqli_query($con,$sql);
	
	//Membuat Array Kosong 
	$result = array();
	
	while($row = mysqli_fetch_array($r)){
		
		//Memasukkan Nama dan ID kedalam Array Kosong yang telah dibuat 
		array_push($result,array(
		"id"=>$row['id'],
		"Foto"=>$row['Foto'],
		"Jabatan"=>$row['Jabatan'],
		"Nama"=>$row['Nama'],
		"Pangkat_korps"=>$row['Pangkat_korps'],
		"Agama"=>$row['Agama'],
		"Kesatuan"=>$row['Kesatuan'],
		"Matra"=>$row['Matra'],
		"Alamat_kantor"=>$row['Alamat_kantor'],
		"No_telepon_kantor_1"=>$row['No_telepon_kantor_1'],
		"No_telepon_kantor_2"=>$row['No_telepon_kantor_2'],
		"No_fax"=>$row['No_fax'],
		"Alamat_Rumah"=>$row['Alamat_Rumah'],
		"No_telepon_rumah"=>$row['No_telepon_rumah'],
		"No_hp"=>$row['No_hp'],
		"Email"=>$row['Email'],

		));
	}
	
	//Menampilkan Array dalam Format JSON
	echo json_encode(array('result'=>$result));
	
	mysqli_close($con);
?>