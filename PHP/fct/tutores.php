<?php
session_start();
include ("funciones/funcionesBD.php");
conexionBD();
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Listar Tutores IES</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
    <h3 class="my-5">Registrado como, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b></h3>
    <h1 class="my-5"><b>Lista Tutores IES</b></h1>
    <p>
        <a href="consultas.php" class="btn btn-warning">Listar Tutores Empresas</a>
        <a href="empresas.php" class="btn btn-warning">Listar Datos Empresas</a>
        <a href="principal.php" class="btn btn-warning">Menu Principal</a>
    </p>
<?php
$lista = listaTutoresIES();
if ($lista != null){
    echo "<table align=\"center\" border=1 cellspacing='4' cellpadding='1' >";
    echo "<tr>";
    echo "<tr><th>Nombre</th><th>Apellidos</th><th>Codigo Profesor</th><th>Email</th><th>Grupo</th><th>Telefono</th></tr>";
    $reg = $lista->fetch_assoc();
    while ($reg) {
        echo "<tr><td>$reg[NOMBRE]</td><td>$reg[APELLIDOS]</td><td>$reg[COD_PROFE]</td><td>$reg[EMAIL]</td><td>$reg[GRUPO]</td><td>$reg[TELEFONO]</td></tr>";
        echo "</tr>";
        $reg = $lista->fetch_assoc();
    }
}
echo "</table>";
?>
</body>
<a href="logout.php" class="btn btn-warning">Cerrar Sesion</a>
</html>