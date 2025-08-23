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

