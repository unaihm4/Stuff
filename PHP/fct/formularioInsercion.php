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
    <title>Insertar Alumnos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>
    <h3 class="my-5">Registrado como, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b></h3>
<form name="formulario" method="POST" action="formularioInsercion.php" class="form">
    <fieldset class="fieldset">
      <td>Codigo Alumno</td>
          <td><input type="number" name="cod_alumno" size="20" maxlength="20" required placeholder="Codigo Alumno" style="margin-left: 16px;"></td>
      <br>
      <br>		
      <td>Nombre</td>
          <td><input type="text" name="nombre" size="20" maxlength="20" required placeholder="Nombre" style="margin-left: 26px;"></td>
      <br>
      <br>		
      <td>Apellidos</td>
          <td><input type="text" name="apellidos" size="20" maxlength="20" required placeholder="Apellidos" style="margin-left: 26px;"></td>		

      <br>
      <br>
      <td>Direccion</td>
          <td><input type="text" name="direccion" size="20" maxlength="40" required placeholder="Direccion" style="margin-left: 26px;"></td>
      <br>
      <br>
      <td>Email</td>
      <td><input type="text" name="email" size="20" maxlength="50" required placeholder="Email" style="margin-left: 26px;"></td>		
      <br>
      <br>
            <td>Grupo</td>
          <td><input type="text" name="grupo" size="20" min="1" max="7" required placeholder="Grupo" required style="margin-left: 26px;"></td>
      <br>
      <br>
            <td>Provincia</td>
          <td><input type="text" name="provincia" size="20" maxlength="50" required placeholder="Provincia" style="margin-left: 26px;"></td>
      <br>
      <br>
      <td>Poblacion</td>
          <td><input type="text" name="poblacion" size="20" maxlength="50" required placeholder="Poblacion" style="margin-left: 26px;"></td>
      <br>
      <br>
      <td>Telefono</td>
          <td><input type="number" name="telefono" size="20" maxlength="50" required placeholder="Telefono" style="margin-left: 26px;"></td>
      <br>
      <br>
      <td>DNI</td>
          <td><input type="text" name="dni" size="20" maxlength="50" required placeholder="dni" style="margin-left: 26px;"></td>
      <br>
      <br> 
      <td>Codigo Profe</td>
          <td><input type="number" name="cod_profe" size="20" maxlength="50" required placeholder="Codigo Profe" list="codigos" style="margin-left: 26px;"></td>
      <br>
      <br>  
        <br>
        <br>
        <br>
        <input class="boton1" type="submit" name="Insertar" value="Insertar Alumno">
        <input type="reset" value="Limpiar formulario" id="boton" style="margin-left: 10px;">
        <br>
        <br>		
      </fieldset>	
  </div>
    <br>
<?php
if (isset ($_POST['Insertar'])){
    $insertar=insertaAlumnosBD($_POST['cod_alumno'], 
                               $_POST['nombre'],
                               $_POST['apellidos'],
                               $_POST['direccion'],
                               $_POST['email'],
                               $_POST['grupo'],
                               $_POST['provincia'],
                               $_POST['poblacion'],
                               $_POST['telefono'],
                               $_POST['dni'],
                               $_POST['cod_profe']);
    if ($insertar==true)
        echo "<script> alert('ALUMNO INSERTADO'); </script>";
    elseif ($insertar==false)
        echo "<script> alert('ERROR AL INSERTAR ALUMNO'); </script>";
    else echo "<script> alert('ERROR DE CONEXION DE LA BASE DE DATOS); </script>";    
}
?>
</form>
<datalist id="codigos">
    <option value="1000">
    <option value="1001">
    <option value="1002">
    <option value="1003">
    <option value="1004">
</datalist>
</body>
<a href="alumnos.php" class="btn btn-warning">Volver</a>
<a href="logout.php" class="btn btn-warning">Cerrar Sesion</a>
</html>