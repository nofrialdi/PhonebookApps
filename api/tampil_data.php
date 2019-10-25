<?php 
 
	//Import File Koneksi Database
	require_once('koneksi.php');
	
	//Membuat SQL Query
	$sql = "SELECT * FROM telepon";
	
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