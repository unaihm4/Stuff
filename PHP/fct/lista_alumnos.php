<?php
include("funciones/funcionesBD.php");
conexionBD();
session_start();
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lista Alumnos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <h1 class="my-5">Registrado como, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b></h1>
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
<form action="lista_alumnos.php" method="POST">
<?php
$lista = listaAlumnos();
if ($lista != null){
    echo "<table align=\"center\" border=1 cellspacing='4' cellpadding='4' >";
    echo "<tr><th>Codigo Alumno</th><th>Nombre</th><th>Apellidos</th><th>Direccion</th><th>Correo Electronico</th><th>Grupo</th><th>Provincia</th><th>Poblacion</th>
    <th>Telefono</th><th>DNI</th><th>Codigo Profe</th><th>Borrar</th></tr>";
    $reg = $lista->fetch_assoc();

    while ($reg) {
        echo "<tr><td>$reg[COD_ALUMNO]</td><td>$reg[NOMBRE]</td><td>$reg[APELLIDOS]</td><td>$reg[DIRECCION]</td>
            <td>$reg[EMAIL]</td><td>$reg[GRUPO]</td><td>$reg[PROVINCIA]</td><td>$reg[POBLACION]</td><td>$reg[TELEFONO]</td><td>$reg[DNI]</td><td>$reg[COD_PROFE]</td>";

?> 
<td><form name="formulario" method="POST" action="lista_alumnos.php" class="form">
    <input type="hidden" name="COD_ALUMNO" value="<?php echo $reg['COD_ALUMNO'] ?>"/>
    <input type="hidden" name="NOMBRE" value="<?php echo $reg['NOMBRE'] ?>"/>
    <input type="hidden" name="APELLIDOS" value="<?php echo $reg['APELLIDOS'] ?>"/>
    <input type="hidden" name="DIRECCION" value="<?php echo $reg['DIRECCION'] ?>"/>
    <input type="hidden" name="EMAIL" value="<?php echo $reg['EMAIL'] ?>"/>
    <input type="hidden" name="GRUPO" value="<?php echo $reg['GRUPO'] ?>"/>
    <input type="hidden" name="PROVINCIA" value="<?php echo $reg['PROVINCIA'] ?>"/>
    <input type="hidden" name="POBLACION" value="<?php echo $reg['POBLACION'] ?>"/>
    <input type="hidden" name="TELEFONO" value="<?php echo $reg['TELEFONO'] ?>"/>
    <input type="hidden" name="DNI" value="<?php echo $reg['DNI'] ?>"/>          
    <input type="hidden" name="COD_PROFE" value="<?php echo $reg['COD_PROFE'] ?>"/>
    <input class="boton2" type="submit" name="Borrar" value="Borrar"/>                               
</form>
</td>   
<?php
        echo "</tr>";
        $reg = $lista->fetch_assoc();
    }
    if (isset($_POST['Borrar'])){
        if (isset($_POST['COD_ALUMNO'])){
            $borrado=borraAlumnosBD($_POST['COD_ALUMNO']);
            if ($borrado==false) echo "<script> alert('Error al conectar con la BD'); </script>";
            elseif ($borrado==true) echo "<script> alert('Alumno Borrado'); </script>";
            else echo "<script> alert('Error al Borrar'); </script>";
        }
    }
}
echo "</table>";
?>
</body>
<br>
<a href="logout.php" class="btn btn-warning">Cerrar Sesion</a>
<a href="lista_alumnos.php" class="btn btn-warning">Actualizar Tabla</a>
<a href="alumnos.php" class="btn btn-warning">Volver</a>
</html>