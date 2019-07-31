<?PHP


$json=array();
				
		$conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

		$consulta="select producto_marca from producto";
		$resultado=mysqli_query($conexion,$consulta);
	//	$result["success"]=1;
		while($registro=mysqli_fetch_array($resultado)){
		    
			$result["producto"]=$registro['producto_marca'];
		
			$json['producto'][]=$result;
			
		}
		mysqli_close($conexion);
		echo json_encode($json);
?>

