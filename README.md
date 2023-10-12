# Optimizar Internet

## 1. Comprobar la Velocidad de Internet Después de la Optimización

Antes de realizar cualquier cambio, es recomendable comprobar la velocidad de tu conexión a Internet. Esto te permitirá evaluar si los ajustes de configuración, como la optimización de DNS, han tenido un efecto positivo en el rendimiento de tu conexión. Puedes utilizar el sitio web [Speedtest](https://www.speedtest.net/es) para realizar esta prueba y comparar los resultados con mediciones anteriores.

## 2. Configuración de la tarjeta de red

- Abre la configuración de la tarjeta de red en Windows:
  - Ejecuta `ncpa.cpl` en la barra de búsqueda de Windows y presiona Enter.

- Desactiva la administración de energía:
  - En las propiedades de la tarjeta de red, ve a "Configurar" y desactiva la administración de energía.

- Desactiva el modo de ahorro de energía:
  - En "Opciones avanzadas", asegúrate de que el "Power Saving mode" esté desactivado.

- Configura la velocidad y el modo Duplex:
  - En "Configurar", selecciona "Velocidad y Duplex" y establece la velocidad en 100 Mbps Full Duplex.

- Actualiza los controladores de la tarjeta de red:
  - En "Configurar", busca la opción "Actualizar controlador" y asegúrate de tener los controladores más recientes instalados.

- Configura los servidores DNS:
  - En "Protocolo de Internet versión 4 (TCP/IPv4)", ve a "Propiedades" y selecciona "Usar las siguientes direcciones de servidor DNS". Puedes utilizar los servidores DNS de Google: [DNS Google](https://developers.google.com/speed/public-dns?hl=es-419).

## 3. Cómo Obtener la Puerta de Enlace, Acceder al Router y Configurar los Servidores DNS**
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

    Cambiar la configuración de DNS es beneficioso y, siguiendo estos pasos, podrás hacerlo con facilidad. Recuerda que las ubicaciones exactas de las opciones pueden variar según el modelo del router, por lo que estos pasos generales te servirán de guía.

## 4. Desactivar la capacidad de Windows de ajustar automáticamente el tamaño de los búferes de red.
 ```netsh int tcp set global autotuninglevel=disabled ```

Para mejorar el rendimiento de red, desactiva la capacidad de Windows de ajustar automáticamente el tamaño de los búferes de red.

Este proceso de optimización ayudará a mejorar la velocidad y la estabilidad de tu conexión a Internet, así como a asegurarte de que estés utilizando los servidores DNS más rápidos y confiables.
