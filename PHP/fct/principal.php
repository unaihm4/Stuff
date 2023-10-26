<?php
session_start();
include ("funciones/funcionesBD.php");
conexionBD();
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Menu Principal</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
    <h3 class="my-5">Registrado como, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b></h3>
    <h1 class="my-5"><b>Menu Principal</b></h1>
    <p>
        <a href="alumnos.php" class="btn btn-warning">Alumnos</a>
        <a href="consultas.php" class="btn btn-warning">Tutores y Empresas</a>
        <a href="cargar_bd.php" class="btn btn-warning">Cargar Base de Datos</a>
    </p>
</body>
<a href="logout.php" class="btn btn-warning">Cerrar Sesion</a>
</html>