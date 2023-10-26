$j1 = Read-Host "Introduce tu Nombre Jugador 1: "
$j2 = Read-Host "Introduce tu Nombre Jugador 2: "
$cartas = Get-ChildItem -Path "F:\PLANTILLA_PRACTICA_07\img\barajafrancesa" -Name
$caras = Get-ChildItem -Path "F:\PLANTILLA_PRACTICA_07\img\caras" -Name
$pagina1="<html>
<head>
  <title>Juego de la carta mas Alta</title>
  <link rel='StyleSheet' type='text/css' href='css\estilos.css'>
</head>
<body>
  <h1>JUEGO DE LA CARTA MAS ALTA</h1>
  <table border=""1"">
  <tr style=""font-weight:bold"" bgcolor=""yellow""><td>$j1</td><td>$j2</td></tr>
  <tr>
  <td><img src='$cara1' alt='cara1'></td>
  <td><img src='img\barajafrancesa\$nombre.jpg'></td>
  <td><img src='img\barajafrancesa\$nombre2.jpg'></td>
  <td><img src='$cara2' alt='cara2'></td>
  </tr>
</body>
</html>"
$pagina1 > pagina.html
foreach ($i in 1..10){
    Start-Sleep -s 1
    $random= Get-Random -Minimum 0 -Maximum ($cartas.Length -1)
    [string] $nombre = $cartas[$random]
    $nombre = $nombre.Substring(0,$nombre.Length - 4)
    Write-Output $nombre
}
foreach ($i in 1..10){
    Start-Sleep -s 1
    $random2= Get-Random -Minimum 0 -Maximum ($caras.Length -1)
    [string] $nombre2 = $caras[$random2]
    $nombre2 = $nombre2.Substring(0,$nombre2.Length - 4)
    Write-Output $nombre2
}
Write-Output $nombre[1]
Write-Output $nombre2[1]
if ($nombre[1] -eq $nombre2[1]) {
    Write-Host "Las dos cartas son iguales EMPATE "
    $cara1="img\caras|Indiferente.JPG"
    $cara2="img\caras|Indiferente.JPG"
}
if ($nombre[1] -gt $nombre2[1]) {
    $num=$nombre[1]-$nombre2[1]
    if ($num -ge 5) {
      Write-Host "La primera carta es mucho mayor GANA $j1 "
      $cara1="img\caras|Alegre.JPG"
      $cara2="img\caras|Apenado.JPG"
    }
    else {
      Write-Host "La primera carta es mayor GANA $j1 "
      $cara1="img\caras|Sonriente.JPG"
      $cara2="img\caras|Triste.JPG"
    }
  }
  if ($nombre2[1] -gt $nombre[1]) {
    $num=$nombre2[1]-$nombre1[1]
    if ($num -ge 5) {
      Write-Host "La segunda carta es mucho mayor GANA $j2 "
      $cara2="img\caras|Alegre.JPG"
      $cara1="img\caras|Apenado.JPG"
    }
    else {
      Write-Host "La segunda carta es mayor GANA $j2 "
      $cara2="img\caras|Sonriente.JPG"
      $cara1="img\caras|Triste.JPG"
    }
  }
  