$nombre = Get-ChildItem -Path C:\Users\unaih\Desktop\PLANTILLA_PRACTICA_02\Fotos -Name | Get-Random -Count 1
$bien = $nombre.SubString(0,($nombre.Length -4))
"<html>
<head>
    <title>La ruleta rusa</title>
    <link rel=""stylesheet"" type=""text/css"" href="".\Estilos.css"">
</head>
<body>
    <h1>RULETA RUSA</h1>
    <p> El alumno seleccionado ha sido:</p>
    <img src="".\Fotos\$nombre"" alt=""$nombre"">
    <h3>$bien</h3>
</body>
</html>" > Ruleta.html
Start-Process .\Ruleta.html
