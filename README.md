# Optimizar Internet

## 1. Comprobar la Velocidad de Internet Después de la Optimización

Antes de realizar cualquier cambio, es recomendable comprobar la velocidad de tu conexión a Internet. Esto te permitirá evaluar si los ajustes de configuración, como la optimización de DNS, han tenido un efecto positivo en el rendimiento de tu conexión. Puedes utilizar el sitio web [Speedtest](https://www.speedtest.net/es) para realizar esta prueba y comparar los resultados con mediciones anteriores.

## 2. Configuración de la tarjeta de red

- Abre la configuración de la tarjeta de red en Windows:
  - Ejecuta `ncpa.cpl` en la barra de búsqueda de Windows y presiona Enter.

- Desactiva la administración de energía:
  - En las propiedades de la tarjeta de red, ve a "Configurar" y desactiva la administración de energía.
 - Descripción: Esta acción es necesaria para evitar que la tarjeta de red se desconecte o reduzca su rendimiento automáticamente con el objetivo de ahorrar energía. Garantiza una conexión de red estable y constante.

- Desactiva el modo de ahorro de energía:
  - En "Opciones avanzadas", asegúrate de que el "Power Saving mode" esté desactivado.
  - Descripción: Al asegurarte de que el "Power Saving mode" esté desactivado en las opciones avanzadas, te aseguras de que la tarjeta de red no reduzca su rendimiento según la carga de trabajo. Esto es crucial para mantener una conexión de alta velocidad y sin interrupciones.

- Configura la velocidad y el modo Duplex:
  - En "Configurar", selecciona "Velocidad y Duplex" y establece la velocidad en 100 Mbps Full Duplex.
  - Descripción: Establecer la velocidad en 100 Mbps Full Duplex garantiza una conexión de red más rápida y confiable, lo que es fundamental cuando se necesita una conexión constante y de alto rendimiento para aplicaciones de ancho de banda intensivo.

- Actualiza los controladores de la tarjeta de red:
  - En "Configurar", busca la opción "Actualizar controlador" y asegúrate de tener los controladores más recientes instalados.
  - Descripción: Mantener los controladores de la tarjeta de red actualizados es esencial para solucionar problemas de compatibilidad y mejorar el rendimiento general. Los controladores actualizados suelen abordar problemas conocidos y garantizan un funcionamiento óptimo.

- Configura los servidores DNS:
  - En "Protocolo de Internet versión 4 (TCP/IPv4)", ve a "Propiedades" y selecciona "Usar las siguientes direcciones de servidor DNS". Puedes utilizar los servidores DNS de Google: [DNS Google](https://developers.google.com/speed/public-dns?hl=es-419).
  - Descripción: Configurar servidores DNS confiables, como los de Google, mejora la resolución de nombres de dominio y acelera la carga de páginas web. Esto es beneficioso para una navegación más rápida y para evitar problemas de resolución de DNS que pueden causar interrupciones en la conectividad de red.

## 3. Cómo Obtener la Puerta de Enlace, Acceder al Router y Configurar los Servidores DNS
  - **Descripción:** Cambiar la configuración de DNS en tu router es una tarea importante para mejorar la seguridad y velocidad de tu conexión a Internet. Sigue estos pasos detallados:

    1. **Obtener la Puerta de Enlace:**
       - En Windows: Abre el "Símbolo del sistema" (Command Prompt) y escribe ```ipconfig```. La dirección IP de la "Puerta de enlace predeterminada" se mostrará en la información de la conexión de red.

    2. **Acceder al Router:**
       - Abre un navegador web e ingresa la dirección IP de la puerta de enlace obtenida en el paso anterior. Esto te llevará a la página de inicio de sesión del router.
       - Ingresa el nombre de usuario y la contraseña del router. Estas credenciales suelen venir en una etiqueta pegada al router o en el manual del mismo. Si no las tienes, contacta a tu proveedor de servicios de Internet para obtenerlas.

    3. **Ir a las Opciones Avanzadas del Router:**
       - Una vez que hayas iniciado sesión en el router, busca la opción que te permita acceder a las "Opciones Avanzadas del Router". Esta opción puede variar según la marca y modelo del router, pero generalmente se encuentra en el menú de configuración principal.

    4. **Localizar las Opciones LAN y DHCP Server:**
       - Dentro de las "Opciones Avanzadas del Router", busca la sección relacionada con la configuración de LAN (Red de Área Local) y DHCP Server. La ubicación de esta sección puede variar según la marca y el modelo del router, pero generalmente se encuentra en la configuración de red.

    5. **Configurar los Servidores DNS:**
       - Dentro de la sección DHCP Server, busca las opciones para "Servidor DNS Principal" (Primary DNS Server) y "Servidor DNS Secundario" (Secondary DNS Server).
       - Configura las direcciones DNS que prefieras. Por ejemplo, Puedes utilizar los servidores DNS de Google: [DNS Google](https://developers.google.com/speed/public-dns?hl=es-419).
       - Ten en cuenta que la ubicación de estas opciones puede variar según el modelo de tu router, pero estos pasos te ayudarán a encontrarlas más fácilmente.

    6. **Aplicar la Configuración:**
       - Guarda los cambios. La nueva configuración de DNS se aplicará a todos los dispositivos conectados al router, mejorando la seguridad y velocidad de tu conexión a Internet.
    
   - Descripción: Cambiar los servidores DNS en la configuración del router permite controlar las resoluciones de nombres de dominio para todos los dispositivos conectados a la red. Esto puede ser útil para mejorar la seguridad y la velocidad de navegación, así como para filtrar contenido no deseado. Al configurar servidores DNS confiables, como los de Google o OpenDNS, puedes experimentar una navegación más rápida y segura en todos tus dispositivos conectados a la red.

## 4. Cómo cambiar el MTU
- Cambiar el MTU puede mejorar la eficiencia y la estabilidad de la conexión de red al permitir que los paquetes se transmitan de manera más eficiente. Esto puede conducir a una mejor calidad de la conexión y un rendimiento más rápido en ciertas situaciones.

1. **Verificación del MTU actual**
```netsh interface ipv4 show subinterfaces```

2. **Obtener el MTU estable con el comando ping**
Puedes utilizar el comando ping para determinar el MTU estable de tu conexión. Comienza con un MTU alto y luego redúcelo gradualmente hasta que encuentres el valor más alto que permite una comunicación sin pérdida de paquetes. El siguiente comando te ayudará a realizar esta tarea:
```ping [destino] -f -l [tamaño_paquete]```

- [tamaño_paquete] es el tamaño inicial del paquete.
- [destino] es la dirección IP o el nombre de host al que deseas enviar los paquetes.
```ping google.com -f -l 1500```

3. **Cambiar el MTU con el nuevo valor**
- Puedes cambiar el MTU de una interfaz de red utilizando el siguiente comando:
```netsh interface ipv4 set subinterface "Ethernet" mtu= [tamaño_paquete] store=persistent```

## 5. Desactivar la capacidad de Windows de ajustar automáticamente el tamaño de los búferes de red.
  - En Windows: Abre el "Símbolo del sistema" (Command Prompt) y escribe```netsh int tcp set global autotuninglevel=disabled ```
  - Descripción: Esto puede ser necesario en situaciones donde se experimentan problemas de latencia o rendimiento en la red, ya que deshabilitar esta función permite un control más preciso sobre la configuración de los búferes de red, lo que puede mejorar la estabilidad y el rendimiento de la conexión.

## 6.  Lista de Algunos Servidores DNS Populares

- **DNS de Google:**
  - *Dirección IPv4 primaria*: 8.8.8.8
  - *Dirección IPv4 secundaria*: 8.8.4.4
  - *Características*: Ofrecen alta velocidad y confiabilidad. Google tiene servidores DNS en IPv4 e IPv6.
  - [Sitio Oficial](https://developers.google.com/speed/public-dns)

- **DNS de Cloudflare:**
  - *Dirección IPv4 primaria*: 1.1.1.1
  - *Dirección IPv4 secundaria*: 1.0.0.1
  - *Características*: Conocidos por su velocidad y seguridad. Cloudflare mantiene registros de acceso privados y no vende datos de usuario.
  - [Sitio Oficial](https://www.cloudflare.com/es-es/learning/dns/what-is-1.1.1.1/)

- **DNS de OpenDNS:**
  - *Dirección IPv4 primaria*: 208.67.222.222
  - *Dirección IPv4 secundaria*: 208.67.220.220
  - *Características*: Ofrecen controles parentales y filtrado de contenido. OpenDNS mantiene una lista de sitios web maliciosos conocidos.
  - [Sitio Oficial](https://www.opendns.com/)

- **DNS de Cloudflare para la familia (1.1.1.2 y 1.1.1.3):**
  - *Dirección IPv4 primaria*: 1.1.1.2
  - *Dirección IPv4 secundaria*: 1.1.1.3
  - *Características*: Diseñados para filtrar contenido no deseado y proporcionar un filtro seguro para la familia.
  - [Sitio Oficial](https://one.one.one.one/family/)

## Licencia
Este proyecto está bajo la licencia [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/). Puedes compartir, adaptar y utilizar estos archivos siempre que des el crédito correspondiente al autor original.
