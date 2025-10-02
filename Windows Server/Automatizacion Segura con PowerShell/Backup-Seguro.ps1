# Backup-Seguro.ps1
# Autor: [Tu nombre]
# Descripción: Script para respaldo incremental seguro con notificación.

# Parámetros de configuración 
$Origen = "Z:\respaldo"  # Carpeta origen (compartida)
$Destino = "Z:\NuevoRespaldo"  # Cambia por ruta segura real
$FechaHora = Get-Date -Format "yyyyMMdd_HHmmss"
$BackupName = "Respaldo_$FechaHora.zip"
$BackupTemporal = "C:\Temp\$BackupName"

# Crear carpetas si no existen
New-Item -Path "C:\Temp" -ItemType Directory -Force
New-Item -Path $Destino -ItemType Directory -Force

# Crear respaldo incremental
function Hacer-Respaldo {
    try {
        Write-Host "Iniciando respaldo..."
        # Comprimir la carpeta
        Compress-Archive -Path $Origen -DestinationPath $BackupTemporal -Update
        Write-Host "Archivo comprimido en $BackupTemporal"
    }
    catch {
        throw "Error al comprimir: $_"
    }
}

# Mover respaldo a red
function Mover-Respaldo {
    try {
        Write-Host "Moviendo respaldo a red..."
        Move-Item -Path $BackupTemporal -Destination $Destino
        Write-Host "Respaldo movido a $Destino\$BackupName"
    }
    catch {
        throw "Error al mover respaldo: $_"
    }
}

# Enviar notificación por correo 
function Enviar-Notificacion {
    param($Estado)

    # Datos del remitente y destinatario de prueba
    $CorreoOrigen = "matiassaavedragaj@gmail.com"
    $CorreoDestino = "matiassaavedragaj@gmail.com" # Puede ser el mismo para pruebas
    $SMTP = "smtp.gmail.com"
    $Puerto = 587
    $Credenciales = Get-Credential  # Se recomienda usar credencial segura

    $Asunto = "Estado del respaldo: $Estado"
    $Cuerpo = "El respaldo se realizo con estado: $Estado. Fecha: $FechaHora"

    Send-MailMessage `
        -From $CorreoOrigen `
        -To $CorreoDestino `
        -Subject $Asunto `
        -Body $Cuerpo `
        -SmtpServer $SMTP `
        -Port $Puerto `
        -UseSsl `
        -Credential $Credenciales
}

# MAIN
try {
    Hacer-Respaldo
    Mover-Respaldo
    Enviar-Notificacion -Estado "EXITO"
}
catch {
    Write-Error $_
    Enviar-Notificacion -Estado "ERROR"
}

# SIG # Begin signature block
# MIIFYQYJKoZIhvcNAQcCoIIFUjCCBU4CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUTABDbjLoCezvsKpn1FyHdwAP
# 9aCgggMAMIIC/DCCAeSgAwIBAgIQYLU3qXOpTZJFakPpJqopiTANBgkqhkiG9w0B
# AQsFADAWMRQwEgYDVQQDDAtGaXJtYVNjcmlwdDAeFw0yNTA3MTYwMDI1MjFaFw0y
# NjA3MTYwMDQ1MjFaMBYxFDASBgNVBAMMC0Zpcm1hU2NyaXB0MIIBIjANBgkqhkiG
# 9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4xnC1dlK8vSWISdwfEvFLvguEFbqX1RPMgrP
# Zym7ykFMmlhNkMD1QrbCGSLDr+ACHlJaXcA4vvsTq/R+xpU0frxrdUPNDMaY+Jfu
# 9Y60cgEwlybLGc94RwZU5go4LGDJl36OF85qSN8ggzmR9WwpxTvwx8lMywlHGLfI
# QkM9BARnxXhLS6NOkWJhqv19GhPiLLdZm4C8zcq2V31rZCEUkn3+mN/pCcwO0mJv
# RCPGfAlESlDvNZUFKQHBNL+FbtDxnKduER0iYTTyi9tqpgoLZqmU1Ihh/JzHtMF0
# 7xNeGddAE7dHC8+lGbPYhTWZenwk8sPcCfKQJMueQ1udhdZnOQIDAQABo0YwRDAO
# BgNVHQ8BAf8EBAMCB4AwEwYDVR0lBAwwCgYIKwYBBQUHAwMwHQYDVR0OBBYEFD9J
# gUAoyuM7wfG2pSZIf0mnBggnMA0GCSqGSIb3DQEBCwUAA4IBAQBf8tN55ZYG9vAS
# L9kNoXP1lqnWLk+MHlRGJXATze0R74BZx/NDaVIEQ7QM8caw3FaQowOGhMqbwoyR
# WX6TErjIYKz4nJNPeW9fd4xIOb3jB20eAyHAGjalnKiItlDNhL/bqMClGvZl7wla
# HFFTOR8Xc43Ru0QBVGqj+MTBRSEpdcwWSmEgNyz5jkdj47C/9CyWU+oZFAHy3u+1
# 5fQG2lzldH0ew4Hzm9Aw00yJd6EktYhHCAmzacRWWvOrYPtwBhEizWXKsukXei8q
# OCq1xk6dxWENPqVhJZEEbrw/djB1LG2JcMj/Srks6K6kDYcqz6kfwHmxpy6IdJxl
# 1nF/XkwLMYIByzCCAccCAQEwKjAWMRQwEgYDVQQDDAtGaXJtYVNjcmlwdAIQYLU3
# qXOpTZJFakPpJqopiTAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAA
# oQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4w
# DAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUpHhsmaBljNxXMA/u1nLVsLUO
# nKUwDQYJKoZIhvcNAQEBBQAEggEAsEItv69jBmts3uc8LvwNjs6fEmCR6Xi7ByFp
# tKjEIWtTeotYpxVsWPciRvXfw2jKwhdDb1/SD7+6HrUZrpvi7zaMa5KThjFaZ3qy
# dSpaLfJziJdZV2pR1Ou30r0sY5oa2IbqsyE5m2p/QYNYa6P6wpYQ5yJ9EQJ5llli
# b4uxyO9+5h3vqxwj/HtC8T5uCluknXBhFpvxoOuojLrrOiMvI6ZEF8SKM97pehnJ
# uun4SsR1X+hhKYuA7fTjMr7mFuWj+pzEau3tJpDy1OgitBvy09qbmeJCeRsga/FA
# yobicQewrW7fvcOiSLh7mnI4Raxc+YrnYgZ03jp3+znkKHpbxg==
# SIG # End signature block
