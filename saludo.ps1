# Script de PowerShell que saluda
# Parte del reto ASIR360 25-26

# Función para saludar
function Saludar {
    param(
        [string]$Nombre = "Usuario"
    )
    
    Write-Host "=================================" -ForegroundColor Yellow
    Write-Host "¡Hola, $Nombre!" -ForegroundColor Green
    Write-Host "Bienvenido a PowerShell" -ForegroundColor Cyan
    Write-Host "Estás en el repositorio: $PSScriptRoot" -ForegroundColor Magenta
    Write-Host "Fecha y hora: $(Get-Date)" -ForegroundColor White
    Write-Host "=================================" -ForegroundColor Yellow
}

# Obtener el nombre del usuario del sistema
$usuario = $env:USERNAME

# Llamar a la función
Saludar -Nombre $usuario

# Información adicional
Write-Host "`nInformación del sistema:" -ForegroundColor Cyan
Write-Host "- Versión de PowerShell: $($PSVersionTable.PSVersion)" -ForegroundColor White
Write-Host "- Sistema Operativo: $([System.Environment]::OSVersion.VersionString)" -ForegroundColor White
