<?php 
$mysqli = new mysqli("localhost", "root", "", "estacion");
if ($mysqli->connect_errno) {
    echo "Fallo al contenctar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
echo "Informe de partes.<br> <br>";
 //Creamos el Select para decir que campos queremos mostrar
 //en este caso de ejemplo mostraremos los dos que hay
 $sql = "SELECT * FROM partes";
 $retval = mysqli_query($mysqli, $sql);
 //Creamos un Bucle que recorra toda la tabla de SQL
 while($row =  mysqli_fetch_assoc($retval)){
    echo "<pre>Nombre: ".$row['id'].",    ID: ".$row['tipoparte'].",	  Creado: ".$row['created']."<br></pre>";		
} 
    
?>
