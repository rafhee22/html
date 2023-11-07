<?php
	include 'koneksi.php';

    $idhapus	= $_POST['idhapus'];

	$sql	= "DELETE from keranjang where keranjangid='$idhapus'";

	$query	= mysqli_query($conn, $sql) or die(mysqli_error($conn)); 

	if($query) {
		header("Location:keranjang.php");
	} else {
		echo "Hapus Data Gagal.";
	}
	
?>