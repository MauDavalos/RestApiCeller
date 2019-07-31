<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";
$json=array();
	
	if(isset($_GET["categoria_id"])){

		$categoria_id = $_GET["categoria_id"];
				

		$conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

		$consulta="select DISTINCT producto_marca from producto WHERE categoria_id = {$categoria_id}";
		$resultado=mysqli_query($conexion,$consulta);
		//$result["success"]=1;
		while($registro=mysqli_fetch_array($resultado)){
		    
			$result["producto"]=$registro['producto_marca'];
		
			$json['marca'][]=$result;
			
		}
		mysqli_close($conexion);
		echo json_encode($json);
	}
?>
				


