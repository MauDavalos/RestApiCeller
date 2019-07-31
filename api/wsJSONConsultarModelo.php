<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";

$json=array();
	
	if(isset($_GET["categoria_id"]) && isset($_GET["producto_marca"])){

		$producto_id = $_GET["categoria_id"];
		$producto_marca = $_GET["producto_marca"];
		
		
		$conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

		$consulta="select DISTINCT producto_modelo from producto WHERE categoria_id = {$producto_id} and producto_marca= '{$producto_marca}'";
		$resultado=mysqli_query($conexion,$consulta);
		//$result["success"]=1;
		while($registro=mysqli_fetch_array($resultado)){
		    
			$result["producto"]=$registro['producto_modelo'];
		
			$json['modelo'][]=$result;
			
		}
		mysqli_close($conexion);
		echo json_encode($json);

	}
?>
