<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";

$json=array();

if(isset($_GET["usuarioNombre"]) && isset($_GET["usuarioApellido"])&& isset($_GET["usuarioMail"])&& isset($_GET["usuarioTelefono"])&& isset($_GET["usuarioPassword"])){

		
		$nombre=$_GET['usuarioNombre'];
		$apellido=$_GET['usuarioApellido'];
		$mail=$_GET['usuarioMail'];
		$tel=$_GET['usuarioTelefono'];
		$pass=$_GET['usuarioPassword'];
		
		
		$conexion=mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);
		
		$insert="INSERT INTO usuario(usuarioNombre, usuarioApellido, usuarioMail,usuarioTelefono,usuarioPassword) VALUES ('{$nombre}','{$apellido}','{$mail}','{$tel}','{$pass}')";
		$resultado_insert=mysqli_query($conexion,$insert);
		
		if($resultado_insert){
			$consulta="SELECT * FROM usuario WHERE usuarioMail = '{$mail}'";
			$resultado=mysqli_query($conexion,$consulta);
			
			if($registro=mysqli_fetch_array($resultado)){
				$json['usuario'][]=$registro;
			}
			mysqli_close($conexion);
			echo json_encode($json);
		}
		else{
			$resulta["usuarioMail"]=0;
			$resulta["usuarioNombre"]='No Registra';
			$resulta["usuarioPassword"]='No Registra';
			$json['usuario'][]=$resulta;
			echo json_encode($json);
		}
		
	}
	else{
			$resulta["usuarioMail"]=0;
			$resulta["usuarioNombre"]='WS No retorna';
			$resulta["usuarioPassword"]='WS No retorna';
			$json['usuario'][]=$resulta;
			echo json_encode($json);
		}

?>

