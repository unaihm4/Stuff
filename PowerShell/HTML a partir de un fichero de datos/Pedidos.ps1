$fichero= Read-Host "Introduce el nombre del fichero"
$pagina1="<html>
<head>
  <title>Pedidos</title>
  <link rel= ""StyleSheet"" type=""text/css"" href=""./Estilos.css"">
</head>
<body>
  <h1>PEDIDOS</h1>
  <table border=""1"">
<tr style=""font-weight:bold"" bgcolor=""silver""><td>NUMERO DE PEDIDO</td><td>NUMERO DE LINEA</td><td>NUMERO DE PRODUCTO</td><td>CANTIDAD</td><td>PRECIO</td><td>IMPORTE</td></tr>"
$pagina1 > pagina.html
$lineas= Get-Content -Path $fichero

foreach($lineas in Get-Content -Path $fichero){
  $campos=$lineas.Split("^")
  $pedido=$campos[0]
  $linea=$campos[1]
  $producto=$campos[2]
  $cantidad=$campos[3]
  $precio=$campos[4]
  $importe=[double] $precio*$cantidad
  $total+= [double] $precio*$cantidad
  

  $pagina1="<tr><td>$pedido</td><td>$linea</td><td>$producto</td><td>$cantidad</td><td>$precio</td><td>$importe</td></tr>"
  $pagina1 >> pagina.html 
}
$pagina1="<tr style=""font-weight:bold"" bgcolor=""silver""><td colspan=""5"" align=""right"">Total Importe</td><td>$total</td></tr>
  </table>
</body>
</html>"
$pagina1 >> pagina.html 
