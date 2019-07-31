<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";

$json=array();

  if(isset($_GET["usuarioMail"]) && isset($_GET["usuarioPassword"])){
    $usuarioMail=$_GET["usuarioMail"];
    $usuarioPassword=$_GET["usuarioPassword"];


    $conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

    $consulta="select * from usuario where usuarioMail= '{$usuarioMail}' and usuarioPassword= '{$usuarioPassword}'";
    $resultado=mysqli_query($conexion,$consulta);
      
    if($registro=mysqli_fetch_array($resultado)){
      $json['usuario'][]=$registro;
    //  echo $registro['id'].' - '.$registro['nombre'].' - '.$registro['profesion'].'<br/>';
    }else{
      $resultar["usuarioMail"]=0;
      $resultar["usuarioPassword"]=0;
      $resultar["usuarioNombre"]='No Encontrado';
      $resultar["usuarioApellido"]='No Encontrado';
      $resultar["usuarioTelefono"]='No Encontrado';
      $json['usuario'][]=$resultar;
    }
    
    mysqli_close($conexion);
    echo json_encode($json);
  }
  else{
    $resultar["success"]=0;
    $resultar["message"]='Ws no Retorna';
    $json['usuario'][]=$resultar;
    echo json_encode($json);
  }
?>