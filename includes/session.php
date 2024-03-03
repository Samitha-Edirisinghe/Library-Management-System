<?php
	include 'includes/conn.php';
	session_start();

	if(isset($_SESSION['student'])){
		$sql = "SELECT * FROM students WHERE id = '".$_SESSION['student']."'";
		$query = $conn->query($sql);
		$student = $query->fetch_assoc();
	}

?>
