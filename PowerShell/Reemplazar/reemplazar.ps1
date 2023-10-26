function Menu
{
     do {

   
        Write-Host "1:- Reemplazar"
        Write-Host "2:- Consultar"
        Write-Host "3:- Salir"
        $selection = Read-Host "Elige una opcion entre el 1 y el 3: "
        switch ($selection) {
             '1' {
               $buscar = Read-Host "Introduce el texto a buscar: "  
               $replace = Read-Host "Introduce el texto a reemplazar: " 
                (Get-Content -Path '.\alumnos.txt') -replace $buscar, $replace | Set-Content -Path '.\alumnos.txt'
             } 
             '2' {
                (Get-Content -Path 'C:\Users\ASIR\Downloads\PLANTILLA_PRACTICA_03\PLANTILLA_PRACTICA_03\alumnos.txt') 
             }
         }
         pause
     
    } until ($selection -eq '3')
 
 }
Menu