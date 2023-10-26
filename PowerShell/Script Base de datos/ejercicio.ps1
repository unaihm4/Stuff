function Insercion {
    $ruta = Read-Host "Introduce el nombre y la ruta del archivo: "
    $archivo = Get-Content -Path $ruta
    foreach ($line in $archivo)
    {
    [string[]] $array = $line.Split("^")
    Write-Host "INSERT INTO ALUMNOS (DNI,Nombre,Direccion,Ciudad,Provincia,Telefono)"
    Write-Host "VALUES ("$array")"
    } 
}
Insercion

