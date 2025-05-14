# Introducción

Git es una forma de mantener un control de versiones en un proyecto de programación en el que varias personas ayudan. Git permite una mejor colaboración, control de versiones, y manejo de diferentes contribuciones entre distintos desarrolladores. 

Para entender Git primero se debe entender la diferencia entre Git y Github. 

## Git

Git es el *programa* que te permite tener un control de versiones. Es mediante este programa que sea puede crear un flujo del historial del proyecto. Esto te permite también generar nuevas *ramas* en las que se puede trabajar en diferentes *features*, o incluso ramas para cada colaborador. Sin embargo, Git es un programa local, es decir, cada persona debe de tenerlo instalado y es diferente del de los demás.

- Control de versiones
- Distintas ramas
- Local

## GitHub

GitHub está basado en Git, pero no es lo mismo. GitHub es simplemente la plataforma a la que se suben los proyectos trackeados por Git. Es decir, GitHub está basado en Git y lo utiliza, pero no lo reemplaza. La utilidad de GitHub es que permite publicar tus proyectos de git, de modo que alguen más en otra computadora puede descargarlos, utilizarlos, y modificarlos. Es decir, GitHub es el servidor en dónde se publican todos los proyectos que son trackeados por Git.

- Plataforma para hostear proyectos de Git
- Servidor dónde se encuentran los proyectos en la nube
- Permite descargar proyectos

# Trabajar con Git y GitHub

## Requisitos

Para poder trabajar con Git y GitHub primero se tiene que instalar Git. En versiones recientes de MacOS y algunas distribuciones de Linux ya viene instalado por default. De no tenerlo se debe de instalar. 

También se debe de crear una cuenta en GitHub para poder hostear en la nube todos los proyectos que vayan a ser trackeados por Git. 

Finalmente se debe de linkear Git con GitHub mediante un clave especial (esta parte no se especifica en esta guía xd).

## Funcionamiento

Para usar Git se deben seguir ciertos pasos:

1. Clonar el repositorio
2. Inicializar el directorio como un repositorio
3. Hacer cambios en los archivos
4. Añadir y *commit* los cambios
5. Pushear los cambios 

### Clonar el Repositorio

El primer paso para utilizar Git es clonar el repositorio desde GitHub. El objetivo aquí es: existe un repositorio creado en la nube (dentro de Github), y nosotros queremos *descargar* ese repositorio para poder tenerlo localmente instalado en nuestra máquina.

Aquí es conveniente nombrar a las cosas. 

Existen dos tipos de repositorios, repositorios **locales** y repositorios **remotos**. 
- **Locales**: Un repositorio local es aquel que está guardado dentro de la computadora (tu computadora). Este es el repositorio trackeado por Git. En un equipo de desarrolladores todos tienen un repositorio local, cada quien el suyo propio, donde hacen los cambios.
- **Remotos**: Solo existe un repositorio remoto. Este es el que se sube a GitHub. Se le dice remoto porque no está en ninguna de las computadoras de los desarrolladores, sino que esta guardadon remotamente en los servidores de GitHub. Todo el equipo comparte este mismo repositorio.

Nuestro objetivo al clonar es clonar el repositorio remoto y guardarlo como un repositorio local dentro de nuestra computadora. Este primer paso de clonar, o copiar, el repositorio se logra con el siguiente comando:

```
git clone <url-del-repositorio>
```

> *Aclaraciones*: Este comando se ejecuta dentro de la terminal, y creará una carpeta (directorio) que contenga todo el contenido del repositorio remoto. Es importante saber dónde se está generando este repositorio (en que lugar/carpeta se guarda) por lo que saber usar y moverte en la terminal es necesario.

### Inicializar como Repositorio

Ahora tenemos el repositorio instalado. Esto significa que descargamos un carpeta con el nombre del repositorio que contiene todos los archivos del mismo. Sin embargo, aún hace falta crear nuestro repositorio local. Para hacer esto simplemente hay que navegar al repositorio (usualmente `cd <nombre-del-repo>`). 

Dentro del directorio (folder) podemos inicializar este directorio como un repositorio en Git local. De esta manera Git empezará a trackear todos lo cambios realizados dentro del directorio. Para esto ejecutamos:

```
git init
```

> *Aclaraciones*: Es posible que también se tenga que ejecutar el comando `git remote add origin <url-del-repositorio>`. Este comando linkea en repositorio local con el repositorio remoto. 

### Hacer cambios en los archivos

Una vez que se inicializó el directorio como un repositorio de Git, ya se pueden modificar los archivos dentro de este. Usualmente la convención es modificar los archivos de este directorio. No es necesario hacer los cambios en otros archivos y después copiar y pergarlos a este directorio. 

### Añadir y commits

Ya que se realizaron cambios dentro del directorio (repositorio local) es necesario añadirlos al historial de Git, para que este los pueda trackear. Esto se hace con el comando:

```
git add <nombre-del-archivo-a-añadir>
```

Existe una manera más fácil para añadir **todos** los archivos al historial:

```
git add .
```

Así se agregar todos los archivos modificados y creados al historial de Git. 

También es importante general un *commit* de esto. Un commit es esencialmente un mensaje del autor de dichos cambios dónde se especifica que cambia o que se añade. Esto se hace con el comando:

```
git commit -m "<mensaje>"
```

### Pushear los cambios

Hasta ahora solo se ha trabajado con el repositorio local. Todos los cambios que se han añadido han sido dentro del repositorio local, y por ende solon han sido trackeados por Git. El siguiente paso es subir estos cambios a GitHub para que el equipo entero pueda verlos, es decir, subir todos los cambios al repositorio remoto. Esto se logra a través del comando:

```
git push -u origin main
```

> *Aclaraciones*: Este comando pushea los cambios a la rama *main*, que es la rama principal. Instrucciones acerca de distintas ramas se ven más adelante.
