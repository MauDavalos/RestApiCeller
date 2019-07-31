<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";
$conexion=mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);
if(isset($_GET["usuarioID"]) && isset($_GET["provincia"]) && isset($_GET["ciudad"])&& isset($_GET["cPrincipal"])&& isset($_GET["cSecundaria"])&& isset($_GET["referencia"])&& isset($_GET["zipCode"])){
    
	$usuarioID = $_GET["usuarioID"];
	$provincia = $_GET["provincia"];
	$ciudad = $_GET["ciudad"];
	$cPrincipal =$_GET["cPrincipal"];
	$cSecundaria = $_GET["cSecundaria"];
	$referencia = $_GET["referencia"];
	$zipCode = $_GET["zipCode"];
	
	
	$insert="INSERT INTO direccion (`usuario_id`, `provincia`, `ciudad`, `callePrincipal`, `calleSecundaria`, `referencia`, `zipCode`) VALUES('{$usuarioID}','{$provincia}','{$ciudad}','{$cPrincipal}','{$cSecundaria}','{$referencia}','{$zipCode}')";
	$resultado_insert = mysqli_query($conexion,$insert);
		echo "{$resultado_insert}";
	if($resultado_insert){
		echo json_encode("La dirrecion se registra correctamente");
	}else{
		echo json_encode("No se ha registrado");
	}
}	
	mysqli_close($conexion);
?>