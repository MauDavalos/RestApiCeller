<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";

$json=array();
				
		$conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

		$consulta="SELECT * FROM categoria";
		$resultado=mysqli_query($conexion,$consulta);
	//	$result["success"]=1;
		while($registro=mysqli_fetch_array($resultado)){
		    
			$result["categoria_id"]=$registro['categoria_id'];
			$result["categoria_nombre"]=$registro['categoria_nombre'];
		
			$json['categoria'][]=$result;
			
		}
		mysqli_close($conexion);
		echo json_encode($json);
?>
