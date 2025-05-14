# Proyecto-Amaterasu
Proyecto de videojuego
Al momento de entrar en un nuevo proyecto alojado en github:

1. Lo primero que se debe hacer es 'Clonar' el repositiorio de Github 
en el que vas a trabajar en tu computadora. Para esto se necesita la URL 
de repositorio y ejecutar en terminal de la computadora el comando:

```
git clone <DIRECCION HTTPS>
```

2. Una vez que ya tengas clonado el repositorio debemos saber como obtener
las ultimas modificaciones que se hicieron en el proyecto. Para esto vamos 
a necesitar 2 cosas: El comando 'git pull origin 'rama' y justamente la rama 
o branch de la que queremos descargar los cambios. La palabra origin en los comandos 
de sincronizacion con github como pull y push hace referencia a una instancia 
duplicada de nuestro repositorio que vive en algún otro lugar en un servidor remoto.
Para saber como se llama esta instancia, que por lo general se llama origin, 
utilizamos el comando 'git remote'.

Una vez descargada la ultima version del proyecto podemos empezar a hacer nuestros cambios. 
Cuando hayamos terminado es imprortante subirlos al repostiorio en la nube en Github.
A la acción de subir los cambios hechos de manera local a la nube se le conocen como 
commit. Un commit tiene 4 pasos fundamentales: 'Status','add','commit' y 'push'.
1. status conciste en identificar los archivos que fueron modificados y que deben ser subidos. 
utilizamos el comando 'git status' para ver estos archivos a subir que deben de aparcer 
de color rojo. 
2. Con los archivos a subir identificados, los debemos de delimitar de los demas y prepararlos 
para subirlos. Utilizamos el comando 'git add [NOMBRE DE ARCHIVO]' para subir 
archivos individuales o en caso de querer subir todos los archivos modificados utilizar el comando 
'git add .'.
3. Con el motivo de llevar un control de cambios organizado debemos de darle una breve descripción 
a la subida de archivos que vamos a hacer. Esta descripcion se le llama 'commit' y se hace con el comando 
'git commit -m "Breve explicación del las modificaciones"

4. Por ultimo queda subir el commit al repositorio central en Github. Utilizamos el comando 
'git push origin "rama" donde origion es el nombre del remoto de nuestro repositiorio y acabamos con la 
rama donde vamos a subir los cambios. 


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

### Hacer cambios en los archivos

Una vez que se inicializó el directorio como un repositorio de Git, ya se pueden modificar los archivos dentro de este. Usualmente la convención es modificar los archivos de este directorio. No es necesario hacer los cambios en otros archivos y después copiar y pergarlos a este directorio. 

### Añadir y commits


