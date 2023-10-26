$fichero= Read-Host "Introduce el nombre del fichero"
$pagina1="<html>
<head>
  <title>Usuarios</title>
</head>
<body>
  <h1>USUARIOS</h1>
  <table border=""1"">
</body>
</html>"
$pagina1 > pagina.html
$lineas= Get-Content -Path $fichero

foreach($lineas in Get-Content -Path $fichero){
  $campos=$lineas.Split("^")
  $usuario= $campos[0]
  $contrasena= $campos[1]
  $grupo= $campos[2]
  $accion= $campos[3]
  $pagina1="<tr><td>$usuario</td><td>$contrasena</td><td>$grupo</td><td>$accion</td></tr>"
  $pagina1 >> pagina.html 
}
$pagina1 >> pagina.html 
if ($accion.Equals("ALTA")) {
    New-LocalUser -Name $usuario -Password $contrasena -AccountNeverExpires -PasswordNeverExpires
    Add-LocalGroupMember -Member $usuario -Group $grupo
}
if ($accion.Equals("BAJA")) {
    Remove-LocalUser $usuario
}
Write-Host $usuario