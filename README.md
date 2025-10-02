# Portafolio Seguridad Informatica en entorno Windows Server y Linux 
## 🖥️ Servicios de Infraestructura en Windows Server

Este repositorio contiene documentación, configuraciones y ejemplos prácticos relacionados con la administración de servicios de infraestructura en **Windows Server**, incluyendo WSUS, Active Directory, DHCP, DNS, IIS y políticas de seguridad.

### 📚 Contenido

- `1 Servicios de Infraestructura en Windows Server.pdf`: Documento base con capturas y procedimientos.
- Scripts de configuración (PowerShell)
- Archivos de políticas de grupo (GPO)
- Diagramas de red y roles de servidor

### 🧩 Temas cubiertos

- **WSUS (Windows Server Update Services)**: Sincronización, aprobación de actualizaciones y estadísticas del servidor.
- **Active Directory**: Creación de usuarios, unidades organizativas y configuración de dominio.
- **DHCP y DNS**: Configuración de ámbitos, reservas y zonas de búsqueda directa/inversa.
- **IIS (Internet Information Services)**: Gestión de certificados SSL y publicación de sitios web.
- **Políticas de seguridad**: Bloqueo de acceso a dispositivos USB, configuración de firewall y reglas de tráfico.
  
---

## 🔍 Supervisión y Auditoría de Servicios Críticos en Windows Server

Este repositorio documenta la implementación de auditoría avanzada en entornos Windows Server, utilizando herramientas como **Sysmon**, **Visor de Eventos**, y tareas automatizadas para detectar actividad sospechosa en servicios críticos.

### 📁 Contenido

- `2 Supervision y Auditoria de Servicios Crtiticos en windows Server.pdf`: Documento base con capturas, configuraciones y ejemplos.
- Scripts de monitoreo (`AD_Alert.ps1`)
- Archivos de configuración de Sysmon (`sysmonconfig.xml`)
- Logs de eventos críticos
- Diagramas de flujo de auditoría

### 🧠 Temas cubiertos

- **Auditoría de eventos críticos**: Configuración de políticas locales para registrar accesos, cambios y privilegios.
- **Sysmon**: Instalación, configuración y análisis de eventos como creación de procesos, conexiones de red, consultas DNS, etc.
- **Visor de Eventos**: Filtrado por ID de evento (4624, 4625, 4720, 4732, etc.) para detectar patrones sospechosos.
- **Alertas automatizadas**: Tareas programadas que ejecutan scripts ante eventos críticos.
- **Recomendaciones de mejora**: Implementación de AppLocker, MFA y políticas de bloqueo por intentos fallidos.

---
## ⚡ Alta Disponibilidad en Windows Server

Este repositorio documenta la implementación de estrategias de alta disponibilidad en entornos Windows Server, incluyendo **copias de seguridad automáticas**, **restauración de datos críticos**, y **Network Load Balancing (NLB)** para garantizar continuidad operativa.

### 📁 Contenido

- `3 Implementacion y Pruebas de Alta Disponibilidad en Windows Server.pdf`: Documento base con capturas, comandos y pruebas realizadas.
- Scripts de respaldo (`backup.ps1`)
- Configuraciones de NLB
- Logs de restauración y pruebas de conectividad
- Reportes de rendimiento y supervisión

### 🧠 Temas cubiertos

- **Backup y Restore**: Instalación de Windows Server Backup, programación de respaldos diarios, simulación de fallos y recuperación de datos.
- **Network Load Balancing (NLB)**: Instalación, configuración de clústeres, asignación de IP virtual y balanceo de carga entre múltiples nodos.
- **Pruebas de conectividad**: Verificación de acceso a servicios (IIS) mediante IP del clúster.
- **Supervisión de rendimiento**: Uso de Perfmon y WinSAT para evaluar CPU, disco y estado del clúster.
- **Impacto en la disponibilidad**: Análisis de resiliencia ante fallos y continuidad del servicio.

---

## 🔐 Seguridad y Administración Remota en Windows Server

Este repositorio documenta la configuración segura de administración remota en entornos Windows Server, incluyendo el uso de **PowerShell Remoting**, **Server Core**, **Firewall avanzado**, y la gestión segura de **DNS y DHCP**.

### 📁 Contenido

- `4 Seguridad y administración remota en Windows Server.pdf`: Documento base con capturas, comandos y procedimientos.
- Scripts de configuración (`remote_config.ps1`)
- Reglas de firewall en PowerShell
- Configuraciones de zonas DNS y reservas DHCP
- Capturas de pantalla y ejemplos prácticos

### 🧠 Temas cubiertos

- **PowerShell Remoting seguro**: Autenticación con Kerberos, restricción de usuarios, configuración de sesiones remotas.
- **Server Core**: Instalación de roles críticos (DHCP, DNS) en modo sin entorno gráfico.
- **Firewall avanzado**: Reglas específicas para permitir solo tráfico necesario (WinRM, DNS, DHCP).
- **Gestión de DNS**: Creación de zonas primarias con actualización dinámica segura.
- **Asignación de IPs**: Reservas por MAC address y filtrado de dispositivos autorizados.

---

## 🛡️ Seguridad de Servicios Críticos en Entornos Linux

Este repositorio documenta la implementación de medidas de seguridad para proteger servicios críticos en sistemas Linux, incluyendo **SSH**, **DNS (BIND)** y **Apache**, con énfasis en buenas prácticas, hardening y validación criptográfica.

### 📁 Contenido

- `5 Seguridad de servicios críticos en entornos.pdf`: Documento base con capturas, comandos y configuraciones aplicadas.
- Archivos de configuración (`sshd_config`, `named.conf`, `httpd.conf`)
- Scripts de automatización
- Certificados autofirmados y claves privadas
- Evidencias de validación (capturas y comandos)

### 🔐 Temas cubiertos

#### 🔸 SSH Seguro
- Cambio de puerto por defecto (2222)
- Desactivación de autenticación por contraseña
- Autenticación por llave pública
- Restricción de acceso por usuario
- Configuración de firewall para puerto personalizado

#### 🔸 DNS Seguro con BIND
- Configuración de zona interna (`zero.lan`)
- Restricción de consultas externas (`allow-query`, `allow-recursion`)
- Implementación de DNSSEC con claves firmadas
- Validación criptográfica con `dig`

#### 🔸 Apache Hardened
- Ocultamiento de versión del servidor (`ServerTokens`, `ServerSignature`)
- Desactivación de listados de directorios (`Options -Indexes`)
- Configuración HTTPS con certificado autofirmado
- Restricción de acceso por IP a secciones específicas del sitio

---

## 📁 Comparación y Seguridad de Archivos con CIFS y NFS

Este repositorio documenta la implementación, comparación y aseguramiento de servicios de compartición de archivos en Linux utilizando **CIFS (Samba)** y **NFS**, incluyendo pruebas de acceso, automatización de respaldos y monitoreo de rendimiento.

### 📁 Contenido

- `6 Desafio de Comparación y Seguridad de Archivos con CIFS y NFS.pdf`: Documento base con capturas, comandos y evidencias.
- Scripts de respaldo automático (`backup_compartidos.sh`)
- Configuraciones de Samba (`smb.conf`) y NFS (`exports`)
- Resultados de monitoreo (`iostat`, `nfsstat`, `smbstatus`)
- Cron jobs y logs de respaldo

### 🔍 Temas cubiertos

#### 🔸 Configuración de servicios
- CIFS: Creación de recurso compartido con permisos restringidos por grupo.
- NFS: Configuración de directorio compartido con acceso para clientes Linux.
- Montaje desde clientes Windows y Linux.

#### 🔸 Seguridad aplicada
- CIFS: Usuarios sin shell, autenticación SMB, permisos 770.
- NFS: Permisos 777 con control de acceso por IP.
- Firewall y validación de conectividad.

#### 🔸 Automatización de respaldos
- Script que comprime y guarda copias cada 12 horas.
- Tareas programadas con `crontab`.
- Carpeta de respaldo con permisos exclusivos para root.

#### 🔸 Monitoreo y métricas
- `iostat`, `df`, `du`: rendimiento y uso de disco.
- `nfsstat`: estadísticas de NFS.
- `smbstatus`: conexiones activas y archivos bloqueados.

---
## 🧾 Resumen del Proyecto

Este repositorio forma parte de una serie de prácticas técnicas orientadas a fortalecer la administración, seguridad y disponibilidad de servicios en entornos Windows Server y Linux. A través de configuraciones reales, pruebas controladas y documentación detallada, se abordan desafíos clave como la auditoría de eventos críticos, la implementación de alta disponibilidad, la administración remota segura y la comparación de protocolos de compartición de archivos.

Cada módulo refleja un enfoque práctico y estructurado, con énfasis en la validación de resultados, automatización de tareas y aplicación de buenas prácticas. El objetivo es ofrecer una base sólida para entornos educativos, simulaciones profesionales o como referencia técnica para administradores de sistemas.

Este trabajo fue desarrollado con compromiso, curiosidad y una mirada crítica hacia la mejora continua en infraestructura y seguridad informática.

---


