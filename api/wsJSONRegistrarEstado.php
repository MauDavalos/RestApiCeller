<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";
$conexion=mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);
if(isset($_POST["producto_id"]) && isset($_POST["enciende"]) && isset($_POST["ilumina"])&& isset($_POST["funciona"])&& isset($_POST["raspon"])&& isset($_POST["trizado"])){
    
	$producto_id = $_POST["producto_id"];
	$enciende = $_POST["enciende"];
	$ilumina = $_POST["ilumina"];
	$funciona = $_POST["funciona"];
	$raspon = $_POST["raspon"];
	$trizado = $_POST["trizado"];
	
	
	$insert="INSERT INTO estado (`producto_id`, `enciende`, `ilumina`, `funciona`, `raspon`, `trizado`) VALUES('{$producto_id}','{$enciende}','{$ilumina}','{$funciona}','{$raspon}','{$trizado}')";
	$resultado_insert = mysqli_query($conexion,$insert);
		echo "{$resultado_insert}";
	if($resultado_insert){
		echo json_encode("Se ha registrado el estado correctamente");
	}else{
		echo json_encode("No se ha registrado");
	}
}	
	mysqli_close($conexion);
?>