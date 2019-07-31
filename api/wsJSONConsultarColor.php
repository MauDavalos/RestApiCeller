<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";

$json=array();
	
	if(isset($_GET["categoria_id"]) && isset($_GET["producto_marca"]) && isset($_GET["producto_modelo"])){

		$categoria_id = $_GET["categoria_id"];
		$producto_marca = $_GET["producto_marca"];
		$producto_modelo = $_GET["producto_modelo"];
	
				

		$conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

		$consulta="select DISTINCT producto_color from producto WHERE categoria_id = {$categoria_id} and producto_marca = '{$producto_marca}' and producto_modelo = '{$producto_modelo}'";
		$resultado=mysqli_query($conexion,$consulta);
		//$result["success"]=1;
		while($registro=mysqli_fetch_array($resultado)){
		    
			$result["producto"]=$registro['producto_color'];
		
			$json['color'][]=$result;
			
		}
		mysqli_close($conexion);
		echo json_encode($json);

	}
?>
