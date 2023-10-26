$documentos = Get-ChildItem .\documentos -Name
$contadorciclo = 0
$contadorclase = 0
$contadortipo = 0
$contadornombre = 0
foreach ($linea in $documentos) {
    $nombre = $linea.Split("_")[0]
    $ciclo = $linea.Split("_")[1]
    $clase = $linea.Split("_")[2]
    $tipo2 = $linea.Split("_")[3]
    $tipo = $tipo2.Replace(".txt","")
    $existeclase = Test-Path -Path ".\$ciclo\$clase"
    $existeciclo = Test-Path -Path ".\$ciclo"
    $existetipo = Test-Path -Path ".\$ciclo\$clase\$tipo"
    $existenombre = Test-Path -Path ".\$ciclo\$clase\$tipo\$nombre"
    if ($existeciclo -eq $false) {
        New-Item -Name $ciclo -ItemType Directory
        $contadorciclo = $contadorciclo + 1
    }
    else {
        Write-Host "No se creo el ciclo"
    }
    if ($existeclase -eq $false) {
        New-Item -Name $clase -Path ".\$ciclo" -ItemType Directory
        $contadorclase = $contadorclase + 1
    }
    else {
        Write-Host "No se creo la clase"
    }
    if ($existetipo -eq $false) {
        New-Item -Name $tipo -Path ".\$ciclo\$clase" -ItemType Directory
        $contadortipo = $contadortipo + 1
    }
    else {
        Write-Host "No se creo el tipo"
    }
    if ($existenombre -eq $false) {
        New-Item -Name $nombre -Path ".\$ciclo\$clase\$tipo" -ItemType Directory
        $contadornombre = $contadornombre + 1
    }
    else {
        Write-Host "No se creo el nombre"
    }
} 
Write-Host "Este es el numero de ciclos: " $contadorciclo
Write-Host "Este es el numero de clases: " $contadorclase
Write-Host "Este es el numero de tipos: " $contadortipo
Write-Host "Este es el numero de alumnos: " $contadornombre
