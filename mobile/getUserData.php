<?php 

include 'connection.php';

$ID = $_POST["id"];


//$queryResult=$connect->query("SELECT id, user_type_id, username, name, password, user_image FROM users WHERE id = '".$ID."'");

$queryResult=$connect->query("SELECT users.id, users.user_type_id, users.username, users.name, users.password, users.user_image, users.user_signature,CONCAT(user_types.name) as 'user_types' FROM users INNER JOIN user_types ON users.user_type_id = user_types.id WHERE users.id = '".$ID."'");

//$queryResult=$connect->query("SELECT id, user_type_id, username, name, password, user_image FROM users");

$result=array();

while ($fetchData=$queryResult->fetch_assoc()) {
	$result[]=$fetchData;
}

echo json_encode($result);

?>