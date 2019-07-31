<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";
$conexion=mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);
if(isset($_POST["usuario_id"]) && isset($_POST["producto_id"]) && isset($_POST["precioAcordado"])){
    
	$usuario_id = $_POST["usuario_id"];
	$producto_id = $_POST["producto_id"];
	$precioAcordado = $_POST["precioAcordado"];

	
	
	$insert="INSERT INTO compra (`usuario_id`, `producto_id`, `precioAcordado`) VALUES('{$usuario_id}','{$producto_id}','{$precioAcordado}')";
	$resultado_insert = mysqli_query($conexion,$insert);
		echo "{$resultado_insert}";
	if($resultado_insert){
		echo json_encode("La compra se ha registrado correctamente");
	}else{
		echo json_encode("No se ha registrado");
	}
}	
	mysqli_close($conexion);
?>