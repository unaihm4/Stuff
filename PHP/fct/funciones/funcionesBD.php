<?php
function mensaje($mensaje, $pagina)
{
    echo "<script>alert('" . $mensaje . "');location.href='" . $pagina . "';</script>";
}

function conexionBD()
{
    $servername = "localhost:3307";
    $username = "root";
    $password = "";
    $database = "fct";
    $conexion = mysqli_connect($servername, $username, $password, $database);
    if ($conexion->connect_error) {
        echo "Fallo al conectar con la BD";
        return null;
    } else
        return $conexion;
}

function listaAlumnos()
{
    $sql = "SELECT * FROM alumnos";
    $con = conexionBD();

    if (!$con) {
        return null;
    } else {
        $con->set_charset("utf8");
        $resultado = $con->query($sql);
        if ($resultado != null) {
            $con->close();
            return $resultado;
        } else {
            echo "No se ha ejecutado la consulta";
            $con->close();
        }
    }
}
function listaTutoresEmpresa()
{
    $sql = "SELECT nombre, telefono, especialidad, cif FROM tutores_esa";
    $con = conexionBD();

    if (!$con) {
        return null;
    } else {
        $con->set_charset("utf8");
        $resultado = $con->query($sql);
        if ($resultado != null) {
            $con->close();
            return $resultado;
        } else {
            echo "No se ha ejecutado la consulta";
            $con->close();
        }
    }
}
function listaTutoresIES()
{
    $sql = "SELECT * FROM tutores_ies";
    $con = conexionBD();

    if (!$con) {
        return null;
    } else {
        $con->set_charset("utf8");
        $resultado = $con->query($sql);
        if ($resultado != null) {
            $con->close();
            return $resultado;
        } else {
            echo "No se ha ejecutado la consulta";
            $con->close();
        }
    }
}
function listaEmpresas()
{
    $sql = "SELECT * FROM empresas";
    $con = conexionBD();

    if (!$con) {
        return null;
    } else {
        $con->set_charset("utf8");
        $resultado = $con->query($sql);
        if ($resultado != null) {
            $con->close();
            return $resultado;
        } else {
            echo "No se ha ejecutado la consulta";
            $con->close();
        }
    }
}
function insertaAlumnosBD($cod_alumno, $nombre, $apellidos, $direccion, $email, $grupo, $provincia, $poblacion, $telefono, $dni, $cod_profe)
{
    $con = conexionBD();
    if (!$con)
        return null;
    else {
        $sql = "INSERT INTO alumnos(cod_alumno, nombre, apellidos, direccion, email, grupo, provincia, poblacion, telefono, dni, cod_profe) 
                    VALUES ('{$cod_alumno}','{$nombre}','{$apellidos}', '{$direccion}','{$email}','{$grupo}','{$provincia}','{$poblacion}','{$telefono}','{$dni}','{$cod_profe}')";

        if (mysqli_query($con, $sql)) {
            return true;
        } else {
            return false;
        }
        mysqli_close($con);
    }
}
function borraAlumnosBD($COD_ALUMNO)
{
    $con = conexionBD();
    if (!$con)
        return null;
    else {
        $consulta = "DELETE FROM `alumnos` WHERE `alumnos`.`COD_ALUMNO` = '{$COD_ALUMNO}'";
        if (mysqli_query($con, $consulta)) {
            return true;
        } else {
            return false;
        }
        mysqli_close($con);
    }
}
function Cargar_empresas()
{
    $con = conexionBD();
    if (!$con)
        return null;
    else {
        $lineas = file("files/empresas.csv");
        $i = 0;
        foreach ($lineas as $lineas_num => $linea) {
            if ($i != 0) {
                $datos = explode(";", $linea);
                $cif = utf8_encode($datos[0]);
                $razon = utf8_encode($datos[1]);
                $telefono = utf8_encode($datos[2]);
                $direccion = utf8_encode($datos[3]);
                $poblacion = utf8_encode($datos[4]);
                $provincia = utf8_encode($datos[5]);
                $sql = "INSERT INTO empresas VALUES('{$cif}','{$razon}','{$telefono}','{$direccion}','{$poblacion}','{$provincia}')";
                mysqli_query($con, $sql);
            }
            $i++;
        }
        if (mysqli_query($con, $sql)) {
            return true;
        } else {
            return false;
        }
        mysqli_close($con);
    }
}
function Cargar_alumnos()
{
    $con = conexionBD();
    if (!$con)
        return null;
    else {
        $lineas = file("files/alumnos.csv");
        $i = 0;
        foreach ($lineas as $lineas_num => $linea) {
            if ($i != 0) {

                $datos = explode(";", $linea);
                $nombre = utf8_encode($datos[0]);
                $apellidos = utf8_encode($datos[1]);
                $dni = utf8_encode($datos[2]);
                $cod_alumno = utf8_encode($datos[3]);
                $direccion = utf8_encode($datos[4]);
                $email = utf8_encode($datos[5]);
                $grupo = utf8_encode($datos[6]);
                $poblacion = utf8_encode($datos[7]);
                $provincia = utf8_encode($datos[8]);
                $telefono = utf8_encode($datos[9]);
                $cod_profe = utf8_encode($datos[10]);
                $sql = "INSERT INTO alumnos(NOMBRE,APELLIDOS,COD_ALUMNO, COD_PROFE, DIRECCION, DNI, EMAIL, GRUPO, POBLACION,PROVINCIA,TELEFONO)  VALUES
                                           ('$nombre','$apellidos','$cod_alumno','$cod_profe','$direccion','$dni','$email','$grupo','$poblacion','$provincia','$telefono')";
                mysqli_query($con, $sql);
            }
            $i++;
        }
        if (mysqli_query($con, $sql)) {
            mysqli_close($con);
            return true;
        } else {
            mysqli_close($con);
            return false;
        }
        mysqli_close($con);
    }
}
function Cargar_tutores_esa()
{
    $con = conexionBD();
    if (!$con)
        return null;
    else {
        $lineas = file("files/tutores_esa.csv");
        $i = 0;
        foreach ($lineas as $lineas_num => $linea) {
            if ($i != 0) {
                $datos = explode(";", $linea);
                $dni = utf8_encode($datos[0]);
                $nombre = utf8_encode($datos[1]);
                $apellidos = utf8_encode($datos[2]);
                $especialidad = utf8_encode($datos[3]);
                $telefono = utf8_encode($datos[4]);
                $email = utf8_encode($datos[5]);
                $cif = utf8_encode($datos[6]);
                $sql = "INSERT INTO tutores_esa VALUES('$dni','$nombre','$apellidos','$especialidad','$telefono','$email','$cif')";
                mysqli_query($con, $sql);
            }
            $i++;
        }
        if (mysqli_query($con, $sql)) {
            mysqli_close($con);
            return true;
        } else {
            mysqli_close($con);
            return false;
        }
        mysqli_close($con);
    }
}
function Cargar_tutores_ies()
{
    $con = conexionBD();
    if (!$con)
        return null;
    else {
        $lineas = file("files/tutores_ies.csv");
        $i = 0;
        foreach ($lineas as $lineas_num => $linea) {
            if ($i != 0) {
                $datos = explode(";", $linea);
                $nombre = utf8_encode($datos[0]);
                $apellidos = utf8_encode($datos[1]);
                $cod_profe = utf8_encode($datos[2]);
                $password = utf8_encode($datos[3]);
                $email = utf8_encode($datos[4]);
                $grupo = utf8_encode($datos[5]);
                $telefono = utf8_encode($datos[6]);
                $sql = "INSERT INTO tutores_ies VALUES('$nombre','$apellidos','$cod_profe','$password','$email','$grupo','$telefono')";
                mysqli_query($con, $sql);
            }
            $i++;
        }
        if (mysqli_query($con, $sql)) {
            mysqli_close($con);
            return true;
        } else {
            mysqli_close($con);
            return false;
        }
        mysqli_close($con);
    }
}
function borratutor()
{
    $con = conexionBD();
    if (!$con)
        return null;
    else {
        $consulta = "DELETE FROM `tutores_ies` WHERE `cod_profe` = 0";
        if (mysqli_query($con, $consulta)) {
            return true;
        } else {
            return false;
        }
        mysqli_close($con);
    }
}
function Cargar_tablas()
{
    Cargar_tutores_ies();
    borratutor();
    Cargar_alumnos();
    Cargar_empresas();
    Cargar_tutores_esa();
}
