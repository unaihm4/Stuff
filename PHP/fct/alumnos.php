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
    <title>Alumnos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
    <h3 class="my-5">Registrado como, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b></h3>
    <h1 class="my-5"><b>Gestion Alumnos</b></h1>
    <p>
        <a href="formularioInsercion.php" class="btn btn-warning">Insertar Alumno</a>
        <a href="lista_alumnos.php" class="btn btn-warning">Listado y Borrado de Alumnos</a>
    </p>
</body>
<a href="logout.php" class="btn btn-warning">Cerrar Sesion</a>
<a href="principal.php" class="btn btn-warning">Volver al Menu</a>
</html>