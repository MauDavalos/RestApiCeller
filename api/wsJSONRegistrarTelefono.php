<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";
$conexion=mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);
if( isset($_GET["categoria_id"]) && isset($_GET["producto_marca"])&& isset($_GET["producto_modelo"])
	&& isset($_GET["producto_color"])&& isset($_GET["producto_almacenamiento"])&& isset($_GET["producto_valor"])){
    
	
	$categoria_id = $_GET["categoria_id"];
	$producto_marca = $_GET["producto_marca"];
	$producto_modelo = $_GET["producto_modelo"];
	$producto_color = $_GET["producto_color"];
	$producto_almacenamiento = $_GET["producto_almacenamiento"];
	$producto_valor = $_GET["producto_valor"];

	
	
	$insert="INSERT INTO producto (`categoria_id`, `producto_marca`, `producto_modelo`, `producto_color`, `producto_almacenamiento`, `producto_valor`) VALUES('{$categoria_id}','{$producto_marca}','{$producto_modelo}','{$producto_color}','{$producto_almacenamiento}','{$producto_valor}')";
	$resultado_insert = mysqli_query($conexion,$insert);
		echo "{$resultado_insert}";
	if($resultado_insert){
		echo json_encode("El telefono se ha registrado correctamente");
	}else{
		echo json_encode("No se ha registrado");
	}
}	
	mysqli_close($conexion);
?>