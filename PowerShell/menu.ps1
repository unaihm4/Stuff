#********************* areyousure *******************************
 
function areyousure {
$areyousure = read-host "Are you sure you want to exit? (y/n)"
 
if ($areyousure -eq "y"){
exit
}
 
if ($areyousure -eq "n"){
show_ppal_menu
} else {
write-host -foregroundcolor red "Invalid Selection"
areyousure
}
} #end areyousure
 
#********************* show_ppal_menu *******************************
 
function show_ppal_menu {
param (
[string]$Title = 'Menu administración Active Directory'
)
cls
Write-Host "================ $Title ================"
 
Write-Host "1: Cuentas."
Write-Host "2: Reportes."
Write-Host "Q: Press 'Q' to quit."
}
 
#********************** show_accounts_menu ******************************
 
function show_accounts_menu {
param (
[string]$Title = 'Menu cuentas'
)
cls
Write-Host "================ $Title ================"
 
Write-Host "1: Bloquear cuentas por nombre."
Write-Host "2: Establecer contrasena de cuenta por nombre."
Write-Host "v: Press 'v' to return."
}
 
#****************************************************
 
do {
show_ppal_menu
$input = Read-Host "Selecciona una opcion"
switch ($input) {
'1' {
cls
Write-Host 'Has seleccionado la opcion de cuentas #1' -ForegroundColor Green
sleep -seconds 2
do {
show_accounts_menu
$input = Read-Host "Selecciona una opcion"
switch ($input) {
'1' {
cls
Write-Host 'Has seleccionado la opcion de bloquear cuenta por nombre' -ForegroundColor Green
sleep -seconds 2
} 'v' {
Write-Host "returning" -ForegroundColor Green
}
 
default {
Write-Host "I don't understand what you want to do with accounts." -ForegroundColor red -backgroundcolor Yellow
sleep -seconds 2
}
}
} until ($input -eq 'v') #end do/until
} '2' {
cls
Write-Host 'Has seleccionado la opcion #2' -ForegroundColor Green
sleep -seconds 2
} 'q' {
areyousure
$input = ''
}
 
default {
Write-Host "I don't understand what you want to do." -ForegroundColor red -backgroundcolor Yellow
sleep -seconds 2
}
} #end switch
} #end do/until
until ($input -eq 'q')
 
#****************************************************