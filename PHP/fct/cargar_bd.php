<?php
include("funciones/funcionesBD.php");
conexionBD();
session_start();
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
Cargar_tablas();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cargar Base de Datos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
    <h3 class="my-5">Registrado como, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b></h3>
    <h1 class="my-5"><b>Base de Datos Cargada</b></h1>
    <p>
        <a href="principal.php" class="btn btn-warning">Menu Principal</a>
        <a href="logout.php" class="btn btn-warning">Cerrar Sesion</a>
    </p>
</body>
</html>
