function Menu {
Write-Host "************MENU*****************"
Write-Host "Selecciona una opcion"
Write-Host "1.Listar Grupos"
Write-Host "2.Ver miembros de un Grupo"
Write-Host "3.Crear Grupo"
Write-Host "4.Elimina Grupo"
Write-Host "5.Meter miembro en un Grupo"
Write-Host "6.Eliminar miembro de un Grupo"
Write-Host "7.Salir"
$seleccion = Read-Host "Elige una opcion: "
if ($seleccion -gt 7) {
    Menu
    $seleccion = Read-Host "Elige una opcion: "
}
elseif ($seleccion -eq 1) {
    Get-LocalGroup|Format-Table
    Menu
}
elseif ($seleccion -eq 2) {
    $nombre=Read-Host "Dime el nombre del grupo"
    Get-LocalGroupMember $nombre |Format-List
    Menu
}
elseif ($seleccion -eq 3) {
    $nuevo=Read-Host "Dime el nombre del nuevo grupo"
    New-LocalGroup $nuevo
    Menu
}
elseif ($seleccion -eq 4) {
    $borrar=Read-Host "Dime el grupo que deseas eliminar"
    Remove-LocalGroup -Confirm $borrar
    Menu
}
elseif ($seleccion -eq 5) {
    $usuario=Read-Host "Dime el nombre del usuario que quieres meter"
    $nombregrupo=Read-Host "Dime el nombre del grupo"
    Add-LocalGroupMember $nombregrupo -Member $usuario
    Menu
}
elseif ($seleccion -eq 6) {
    $usuario2=Read-Host "Dime el nombre del usuario que quieres eliminar"
    $nombregrupo2=Read-Host "Dime el nombre del grupo"
    Remove-LocalGroupMember $nombregrupo2 -Member $usuario2
    Menu
}
else {
    Write-Host "Hasta Luego"
}
}
Menu