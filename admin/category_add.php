<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$name = $_POST['name'];
		
		$sql = "INSERT INTO category (name) VALUES ('$name')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Category added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}	
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: category.php');

?>