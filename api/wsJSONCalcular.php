<?PHP
$hostname_localhost="localhost";
$database_localhost="id10193737_celler2019";
$username_localhost="id10193737_dinamita";
$password_localhost="dinamita123";

$json=array();
	if(isset($_GET["precio"])&& isset($_GET["enciende"])&& isset($_GET["ilumina"])&& isset($_GET["funciona"])&& isset($_GET["raspon"])&& isset($_GET["trizado"])	){

	    $vPrecio = $_GET["precio"];
	    $vEnciende = $_GET["enciende"];
	    $vIlumina = $_GET["ilumina"];
	    $vFunciona = $_GET["funciona"];
	    $vRaspon = $_GET["raspon"];
	    $vTrizado = $_GET["trizado"];

	    //si enciende

	    if($vEnciende==1){
	    	$vEnciende = $vEnciende*0;
	    }else{
	    	$vEnciende = $vPrecio*0.22;
	    }

	    // si ilumina completamente

	    if($vIlumina==1){
	    	$vIlumina = $vIlumina*0;
	  
	    }else{
	    	$vIlumina = $vPrecio*0.45;
	    }

	    // si es totalmente funcional

	    if($vFunciona==1){
	    	$vFunciona = $vFunciona*0;
	    }else{
	    	$vFunciona = $vPrecio*0.17;
	    }

	    // si tiene raspones

	    if($vRaspon==1){
	    	$vRaspon = $vPrecio*0.04;
	    }else{
	    	$vRaspon = $vRaspon*0;
	    }

	    // si tiene trizado

	    if($vTrizado==1){
	    	$vTrizado = $vPrecio*0.12;
	    }else{
	    	$vTrizado = $vTrizado*0;
	    }



	    

	    $ganancia = $vPrecio*0.32;

	    $resultante = $vPrecio - $ganancia - $vEnciende - $vIlumina - $vFunciona - $vRaspon - $vTrizado;
	    
	    if($resultante<0){
	    	$resultante = 0;
	    }
	    
	    //round(float $resultante, int $precision = 2, );
	    $mask = $resultante;
	    $devolver = number_format((float)$mask, 2, '.', '');



	        
				$conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);
		
		$json['resultante'] = $devolver;
		
		mysqli_close($conexion);
		echo json_encode($json);
	}
?>