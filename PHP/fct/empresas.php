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
    <title>Listar Datos Empresas</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
    <h3 class="my-5">Registrado como, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b></h3>
    <h1 class="my-5"><b>Lista de Datos de las Empresas</b></h1>
    <p>
        <a href="tutores.php" class="btn btn-warning">Listar Tutores IES</a>
        <a href="consultas.php" class="btn btn-warning">Listar Tutores Empresas</a>
        <a href="principal.php" class="btn btn-warning">Menu Principal</a>
    </p>
<?php
$lista = listaEmpresas();
if ($lista != null){
    echo "<table align=\"center\" border=1 cellspacing='4' cellpadding='1' >";
    echo "<tr>";
    echo "<tr><th>CIF</th><th>Razon</th><th>Direccion</th><th>Provincia</th><th>Poblacion</th><th>Telefono</th></tr>";
    $reg = $lista->fetch_assoc();
    while ($reg) {
        echo "<tr><td>$reg[CIF]</td><td>$reg[RAZON]</td><td>$reg[DIRECCION]</td><td>$reg[PROVINCIA]</td><td>$reg[POBLACION]</td><td>$reg[TELEFONO]</td></tr>"; 
        echo "</tr>";
        $reg = $lista->fetch_assoc();
    }
}
echo "</table>";
?>
</body>
<a href="logout.php" class="btn btn-warning">Cerrar Sesion</a>
</html>