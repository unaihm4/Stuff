#Inicializo la variable
$x=0
#Declaro funciones
function preguntar($componente){
    Clear-Host
    Write-Host "¿Que quieres ver?"
    Write-Host "1. Nombre"
    Write-Host "2. Fabricante"
    Write-Host "3. Detallada"
    $opcion=Read-Host "Elige una opcion"
    if ($opcion -eq 1)
    {
        Get-WmiObject -Class $componente|Format-Table Name
    }
    if ($opcion -eq 2)
    {
        Get-WmiObject -Class $componente|Format-Table Manufacturer
    }
    if ($opcion -eq 3)
    {
        
        
    }
}   

#Inicio de menu
while ($x -ne 4)
{
    Clear-Host
    Write-Host "Información de Hw y Sw"
    Write-Host ""
    Write-Host "1. Procesador"
    Write-Host "2. Placa Base"
    Write-Host "3. BIOS"
    Write-Host "4. Salir"
    $x=Read-Host "Seleccione opción"
    if ($x -eq 1){preguntar("win32_processor")}
    if ($x -eq 2){preguntar("win32_baseboard")}
    if ($x -eq 3){preguntar("win32_Bios")}
    if ($x -ne 4)
    {
        Read-Host "Pulsa para continuar"
    }
}