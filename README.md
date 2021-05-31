# Forensics
Herramienta de analisis forense, recuperacion y tallado de archivos.
Forensics es una herramienta escrita es bash que automatiza procesos como volcado de memoria, creacion de imagen forense y recuperacion de archivos

# Instalacion
#git clone https://github.com/Max-1488/Forensics

#pip install -r requirements.txt

#chmod +x forense.sh

#chmod +x forensic.sh

#chmod +x install

#./install.sh

#bash forensics.sh

#Modo de uso
Forenscis en el aspecto es facil de usar, solo necesitas seguir al pie de la letra todo lo que te pide.

![image](https://user-images.githubusercontent.com/64449711/120122530-9a086b00-c166-11eb-8811-c798a8edf76b.png)

tambien hemos añadido una version para el habla inglesa, donde ambos paises segun su idioma pueda usar la herramienta.

![image](https://user-images.githubusercontent.com/64449711/120208670-fad98700-c1ea-11eb-9dd6-9d1eaeec0f7a.png)

# Creacion de Imagen forense
La creacion de imagen forense es muy sencilla, tomando en cuenta que se toman herramientas ya preinstaladas de linux para que esta func
ione, algunas de las herramientas que podran encontrar son, dd, guymager, dc3dd etc

![image](https://user-images.githubusercontent.com/64449711/120122623-2b77dd00-c167-11eb-83e3-00c2657d8402.png)

# Recuperacion de archivos
Incluimos una sección para recuperacion y tallado de archivos, esto no quiere decir que recuperaras el 100% de todo ellos, pero podras tallar y recuperar información con extenciónes como, jpef, png, zip, mp4, pdf, url y entre muchas mas

![image](https://user-images.githubusercontent.com/64449711/120209038-6f142a80-c1eb-11eb-80c5-00a5fa133f14.png)

# validación de hash
la validación de hash es una parte esencial para el analisis forense, en esta area podemos nosotros integrarles un hash tanto en md5 o sha256.

![image](https://user-images.githubusercontent.com/64449711/120209607-1c873e00-c1ec-11eb-8463-558c4b22bfa1.png)

# Analisis de memoria images y memoria ram
podremos analizar imagenes iso tanto los procesos que se han llevado a cabo al momento de un incidente de seguridad, hemos integrado 3 herramientas de uso facil que incluye en este aspecto algunas de estas son: Volatility, binwalk, Autopsy.

![image](https://user-images.githubusercontent.com/64449711/120210226-c6ff6100-c1ec-11eb-9b87-13188fd54db6.png)

# Uso de las herramientas con interfaz grafica.
Mostraremos el uso adecuado de estas herramientas o se podria decir el mas basico, ya que estas requieren mas uso manual.

# Autopsy
Una vez el autopsy se haya iniciado en la herramienta podremos empezar con nuestro primer caso.

![image](https://user-images.githubusercontent.com/64449711/120218826-8822d880-c1f7-11eb-9d00-b6c221b93c84.png)

# Creando un nuevo caso.

![image](https://user-images.githubusercontent.com/64449711/120218889-9d980280-c1f7-11eb-8b36-9a3ab634ab32.png)

Ingrese los detalles para Nombre del caso, descripción, y Nombres de los investigadores.

![image](https://user-images.githubusercontent.com/64449711/120218933-ae487880-c1f7-11eb-89e3-0e2c143179f2.png)

Las ubicaciones del directorio de casos y el archivo de configuración se muestran y se muestran como creado. 
Es importante tomar nota de la ubicación del directorio del caso, como en la captura de pantalla: Se 
creó el directorio de casos (/ var / lib / autopsy / Terry_USB /). Hacer clic AÑADIR HOST continuar:

![image](https://user-images.githubusercontent.com/64449711/120218987-c3bda280-c1f7-11eb-9dd3-d5786c8581fc.png)

Las siguientes son configuraciones opcionales:
(a) Zona horaria: Predeterminado a la configuración local si no se especifica.
(b) Ajuste de la desviación del tiempo: Agrega un valor en segundos para compensar
diferencias de tiempo.
(c) Ruta de la base de datos Hash de alertas: Especifica la ruta de una base de datos creada de conocidos
hash malos.
(d) Ruta de ignorar la base de datos hash: Especifica la ruta de una base de datos creada de
bien conocido

![image](https://user-images.githubusercontent.com/64449711/120219017-cddfa100-c1f7-11eb-9d83-13d2f4a64e9d.png)

Haga clic en el ADDHOST botón para continuar.
Una vez que se agrega el host y se crean los directorios, agregamos la imagen forense que queremos 
analizar haciendo clic en el añadir imagen botón:

![image](https://user-images.githubusercontent.com/64449711/120219062-e059da80-c1f7-11eb-94ce-d274b960db4b.png)

Haga clic en el añadir archivo de imagen botón para agregar el archivo de imagen.

![image](https://user-images.githubusercontent.com/64449711/120219109-ef408d00-c1f7-11eb-80a2-c85b4491eb14.png)

Para importar la imagen para su análisis, se debe especificar la ruta completa. En mi máquina, guardé 
el archivo de imagen en el valor predeterminado Descargas carpeta. Como tal, la ubicación de
el archivo es / root / Downloads / terry-wor-usb-2009-12-11.E01
esto va depender que tipo de imagen que poseas en este caso yo tengo con una extención  de E01.

![image](https://user-images.githubusercontent.com/64449711/120219181-0ed7b580-c1f8-11eb-82b7-f02486bf7c53.png)

Al hacer clic en Próximo, la Detalles del archivo de imagen son mostrados.

![image](https://user-images.githubusercontent.com/64449711/120219219-1d25d180-c1f8-11eb-9466-4e2e66c0a1d7.png)

Haga clic en el agregar botón para continuar.

![image](https://user-images.githubusercontent.com/64449711/120219259-2b73ed80-c1f8-11eb-866d-5a8077bb8a2d.png)

En este punto, estamos casi listos para analizar el archivo de imagen. Asegúrese de seleccionar el
C:/ opción y luego haga clic en ANALIZAR.

![image](https://user-images.githubusercontent.com/64449711/120219303-40508100-c1f8-11eb-93c5-6849cd526201.png)

# Análisis mediante autopsia

Después de hacer clic en el ANALIZAR botón (ver la captura de pantalla anterior), estamos
presentado con varias opciones, en forma de pestañas, con las que comenzar nuestro.

![image](https://user-images.githubusercontent.com/64449711/120219331-4e9e9d00-c1f8-
11eb-8645-2bc0a4662603.png)

Veamos los detalles de la imagen haciendo clic en el DETALLES DE IMAGEN pestaña. En el
siguiente captura de pantalla, podemos ver el ID de volumen y el sistema operativo ( Nombre del OEM) catalogado como BS.

![image](https://user-images.githubusercontent.com/64449711/120219376-637b3080-c1f8-11eb-93b7-02664cd0c360.png)

A continuación, hacemos clic en el analisis de archivo pestaña. Esto se abre en el modo de exploración de archivos, que
permite el examen de directorios y archivos dentro de la imagen. Los directorios dentro de la imagen.

![image](https://user-images.githubusercontent.com/64449711/120219408-6f66f280-c1f8-11eb-9fb6-051c840e80d6.png)

Como se ve en la captura de pantalla anterior, para cada directorio y archivo hay 
campos que muestran cuándo se ESCRITO, ACCEDIDO, CAMBIADO, y CREADO,
junto con su TALLA y metadatos:
(un escrito: La fecha y hora en que se escribió el archivo por última vez.
(b) ACCESO: La fecha y hora en que se accedió al archivo por última vez (solo la fecha
es preciso)
(c) CREADO: La fecha y hora en que se creó el archivo.
(d) META: Metadatos que describen el archivo e información sobre el archivo si.

![image](https://user-images.githubusercontent.com/64449711/120219462-83aaef80-c1f8-11eb-95f4-a5aa43c7fbdf.png)








# Guymager 
Si su dispositivo no aparece en Guymager, o si necesita agregar un dispositivo adicional, haga clic en 
el Volver a escanear en la esquina superior izquierda de la aplicación.

![image](https://user-images.githubusercontent.com/64449711/120218154-8f95b200-c1f6-11eb-949c-cb489a005be0.png)

# Adquirir pruebas con Guymager
Para comenzar el proceso de adquisición, haga clic con el botón derecho en la unidad de pruebas (/ dev / sdb en este 
ejemplo) y seleccione Adquirir imagen. Tenga en cuenta que el Dispositivo de clonación La opción también está 
disponible en caso de que desee clonar la unidad de pruebas en otra. Nuevamente, como se mencionó

![image](https://user-images.githubusercontent.com/64449711/120218245-acca8080-c1f6-11eb-8926-1feb7527ba8b.png)

# Informacion de gestion de casos

![image](https://user-images.githubusercontent.com/64449711/120218339-d1bef380-c1f6-11eb-9341-1f8656337c0d.png)

# Destino 
Directorio de imágenes: La ubicación del archivo de imagen creado y el registro (archivo de información)
• Nombre de archivo de imagen: El nombre del archivo de imagen

![image](https://user-images.githubusercontent.com/64449711/120218415-f024ef00-c1f6-11eb-8f3b-5764204afd84.png)

Para los nuevos usuarios, es posible que desee especificar el directorio donde se guardará el archivo de 
imagen. En la sección de destino, haga clic en el Directorio de imágenes y elija su ubicación. Debe elegir una 
unidad o directorio que sea exclusivo del caso como ubicación tanto para la imagen como para la registro / 
información expediente:

![image](https://user-images.githubusercontent.com/64449711/120218491-0a5ecd00-c1f7-11eb-81fd-be1b6a3d3207.png)

La siguiente captura de pantalla muestra los datos que he utilizado para la adquisición de 
Guymager, habiendo elegido el escritorio como el Directorio de imágenes y algoritmos hash MD5 
y SHA256:

![image](https://user-images.githubusercontent.com/64449711/120218519-18145280-c1f7-11eb-9fa8-0062fd4a3232.png)

Una vez el Comienzo se hace clic en el botón, notará que el Expresar cambios de Inactivo. El Progreso del campo también muestra ahora una barra de progreso

![image](https://user-images.githubusercontent.com/64449711/120218559-282c3200-c1f7-11eb-90b0-59d3c034585e.png)

Al observar más de cerca los detalles en la esquina inferior izquierda de la pantalla, vemos el tamaño, la imagen, las 
rutas de los archivos de información, los nombres y extensiones, la velocidad actual y los cálculos de hash elegidos. 
También vemos que Verificación de imagen está prendido:

![image](https://user-images.githubusercontent.com/64449711/120218594-3712e480-c1f7-11eb-8edd-931945cb3af8.png)

Una vez que se completa el proceso de adquisición, el color del Expresar El botón cambia de 
azul a verde, lo que indica que el proceso de adquisición ha finalizado. También muestra Terminado: 
verificado y correcto si se seleccionaron opciones de verificación/ cálculo de 
hash área. La barra de progreso también muestra 100%:

![image](https://user-images.githubusercontent.com/64449711/120218624-3ed28900-c1f7-11eb-8a50-3777fd9ab712.png)


# Creado Por MaxWice
# Instagram classhtb_
# Paypal ( Si gustas apoyarnos con un $1 te lo adradecemos Sorayav1616@gmail.com)










