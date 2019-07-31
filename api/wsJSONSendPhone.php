<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";

$json=array();
	
	if(isset($_GET["producto_marca"]) && isset($_GET["producto_modelo"]) && isset($_GET["producto_color"])
		&& isset($_GET["producto_almacenamiento"])){

		$producto_marca = $_GET["producto_marca"];
		$producto_modelo = $_GET["producto_modelo"];
		$producto_color = $_GET["producto_color"];
		$producto_almacenamiento = $_GET["producto_almacenamiento"];
				

		$conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

		$consulta="select DISTINCT producto_valor from producto WHERE producto_marca = '{$producto_marca}'
		and producto_modelo = '{$producto_modelo}' and producto_color = '{$producto_color}' 
		and producto_almacenamiento = {$producto_almacenamiento}";

		$resultado=mysqli_query($conexion,$consulta);
		//$result["success"]=1;
		while($registro=mysqli_fetch_array($resultado)){
		    
			$result["producto"]=$registro['producto_valor'];
		
			$json['valor'][]=$result;
			
		}
		mysqli_close($conexion);
		echo json_encode($json);

	}
?>
