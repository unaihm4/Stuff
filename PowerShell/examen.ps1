$cant_alumnos = Read-Host "¿Cuantos alumnos por grupo?"

$lista_alumnos = Get-ChildItem -Path .\Fotos -name

$grupos= [int][Math]::Floor($lista_alumnos.Length/$cant_alumnos)

$zero = Get-Random -Minimum 0 -Maximum $lista_alumnos.Length


function abrir_pagina {
    "<html>
     <head>
    <title>Grupos de Clase</title>
    <link rel=""StyleSheet"" type=""text/css"" href=""./estilos.css"">
    </head>
    <body>
        <h1><u>GRUPOS DE CLASE - 2ºASIR</u></h1>
    <table border=""3"">
    <tr>
    <th>FOTO</th>
    <th>GRUPO</th>
    <th>NOMBRE</th>
    </tr>" > grupos.html
}

abrir_pagina


function cerrar_tabla {
    "</table>" >> grupos.html
 }


function cerrar_pagina { 
    "</body>
    </html>" >> grupos.html
}

Write-Host " "
Write-Host "El número de grupos es $grupos"
Write-Host " "

[int32] $alumnos_sobrantes= $lista_alumnos.Length%$cant_alumnos
for ($i=1; $i -le $grupos; $i++){
    Write-Host "grupo $i --> " -NoNewline
    for ($j=0; $j -lt $cant_alumnos; $j++){
        $alumno_aleatorio = Get-Random -Minimum 0 -Maximum $lista_alumnos.Length -SetSeed $zero
        $alumno_sinextension=$lista_alumnos[$alumno_aleatorio].Substring(0, $lista_alumnos[$alumno_aleatorio].Length -4)
        Write-Host "$alumno_sinextension "  -NoNewline
        Write-Host " " -NoNewline
        $zero++

        #INSERTAMOS A CADA ALUMNO CON SU GRUPO
        "<tr>
            <td><img src=""Fotos/$alumno_sinextension.JPG""/></td>
            <td>GRUPO $i</td>
            <td>$alumno_sinextension</td>
        </tr>" >> grupos.html

    }
    Write-Host " "
}

cerrar_tabla

if ($alumnos_sobrantes -ne 0){
    Write-Host " "
    Write-Host "Los alumnos no listados son:"
    Write-Host "------------------------------"

    "<h3>Los alumnos sobrantes son: </h3>" >> grupos.html

    for ($k=0; $k -lt $alumnos_sobrantes; $k++){
        $alumno_aleatorio = Get-Random -Minimum 0 -Maximum $lista_alumnos.Length -SetSeed $zero
        $alumno_sinextension=$lista_alumnos[$alumno_aleatorio].Substring(0, $lista_alumnos[$alumno_aleatorio].Length -4)
        Write-Host "$alumno_sinextension "
        $zero++

        #ESCRIBIMOS LOS ALUMNOS SOBRANTES
        "<p>$alumno_sinextension</p>" >> grupos.html
    }
}


cerrar_pagina

Start-Process .\grupos.html