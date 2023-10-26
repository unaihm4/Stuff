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
    <title>Listar Tutores Empresa</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
    <h3 class="my-5">Registrado como, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b></h3>
    <h1 class="my-5"><b>Lista de Tutores de Empresa</b></h1>
    <p>
        <a href="tutores.php" class="btn btn-warning">Listar Tutores IES</a>
        <a href="empresas.php" class="btn btn-warning">Listar Datos Empresas</a>
        <a href="principal.php" class="btn btn-warning">Menu Principal</a>
    </p>
<?php
$lista = listaTutoresEmpresa();
if ($lista != null){
    echo "<table align=\"center\" border=1 cellspacing='4' cellpadding='1' >";
    echo "<tr>";
    echo "<tr><th>Nombre</th><th>Telefono</th><th>Especialidad</th><th>CIF</th></tr>";
    $reg = $lista->fetch_assoc();
    while ($reg) {
        echo "<tr><td>$reg[nombre]</td><td>$reg[telefono]</td><td>$reg[especialidad]</td><td>$reg[cif]</td></tr>";
        echo "</tr>";
        $reg = $lista->fetch_assoc();
    }
}
echo "</table>";
?>
</body>
<a href="logout.php" class="btn btn-warning">Cerrar Sesion</a>
</html>