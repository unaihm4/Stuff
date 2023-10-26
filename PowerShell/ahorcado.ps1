function encriptarpalabra([String]$p){
    $encriptada=""
    for ($i=0;$i -lt $p.Length;$i++){
        $encriptada=$encriptada + "-"
    }
    return $encriptada
}
function Intento0() {
        Write-Host "        ---------"
        Write-Host "        |       |"
        Write-Host "        |" 
        Write-Host "        |" 
        Write-Host "        |" 
        Write-Host "        |" 
        Write-Host "        |"         
        Write-Host "  -----------------------" 
        Write-Host ""

    
}
function Intento1() {
    Write-Host "        ---------"
    Write-Host "        |       |"
    Write-Host "                O "
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |"         
    Write-Host "  -----------------------" 
    

}
function Intento2() {
    Write-Host "        ---------"
    Write-Host "        |       |"
    Write-Host "        |       O "
    Write-Host "        |       |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |"         
    Write-Host "  -----------------------" 
    

}
function Intento3() {
    Write-Host "        ---------"
    Write-Host "        |       |"
    Write-Host "        |       O "
    Write-Host "        |        |\" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |"         
    Write-Host "  -----------------------" 
    

}
function Intento4() {
    Write-Host "        ---------"
    Write-Host "        |       |"
    Write-Host "        |        O "
    Write-Host "        |      /|\" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |"         
    Write-Host "  -----------------------" 
    

}
function Intento5() {
    Write-Host "        ---------"
    Write-Host "        |       |"
    Write-Host "        |       O "
    Write-Host "        |      /|\" 
    Write-Host "        |      / " 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |"         
    Write-Host "  -----------------------" 
    

}
function Intento6() {
    Write-Host "        ---------"
    Write-Host "        |       |"
    Write-Host "        |       O "
    Write-Host "        |      /|\" 
    Write-Host "        |      / \" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |" 
    Write-Host "        |"         
    Write-Host "  -----------------------" 
    

}
$indice = Get-Content -Path .\soluciones.txt
$palabra = Get-Random $indice
$numintentos = 0
$acertado = $false
while (($numintentos -le 6) -or ($acertado -eq $false)){
    Clear-Host
switch ( $numintentos ){
    0 {Intento0
       $encriptada = encriptarpalabra $palabra 
       Write-Host $encriptada
       Read-Host}
    1 {Intento1}
    2 {Intento2}
    3 {Intento3}
    4 {Intento4}
    5 {Intento5}
    6 {Intento6}
}
}
$cadena = "Hola"
$cadena.Replace("A","X")