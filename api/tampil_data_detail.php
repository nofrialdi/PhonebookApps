<?php 
 	
	//Mendapatkan Nilai Dari Variable nomor anggota yang ingin ditampilkan
	
	
	//Importing database
	require_once('koneksi.php');

	$query = $_GET['query'];
	
	//Membuat SQL Query dengan anggota yang ditentukan secara spesifik sesuai nomor
	$sql = "SELECT * FROM telepon WHERE id = '$query'";
	
	//Mendapatkan Hasil 
	$r = mysqli_query($con,$sql);
	
	//Memasukkan Hasil Kedalam Array
	$result = array();
	$row = mysqli_fetch_array($r);
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
 
	//Menampilkan dalam format JSON
	echo json_encode(array('result'=>$result));
	
	mysqli_close($con);
?>