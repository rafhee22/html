<?php  
	session_start();
	include 'koneksi.php';

	$keranjangid 	= "";
	$username  		= "";
	$price  		= $_POST['price'];
	$productid		= $_POST['productid'];
	$quantity		= $_POST['quantity'];
	$total_harga	= $price*$quantity;
	
	//keranjangid username total_harga productid quantity catatanorder

	$sql = "INSERT INTO keranjang (keranjangid, username, total_harga, productid, quantity)
	VALUES ( '$username', '$username', '$total_harga', '$productid', '$quantity')";
		// Menjalankan query
  // Menjalankan query
  if ($conn->query($sql) === TRUE) {
    echo '<script>window.history.back();</script>';
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


	
?>