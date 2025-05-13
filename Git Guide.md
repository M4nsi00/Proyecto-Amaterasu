# Proyecto-Amaterasu
Proyecto de videojuego
Al momento de entrar en un nuevo proyecto alojado en github.
Lo primero que se debe hacer es 'Clonar' el repositiorio de Github 
en el que vas a trabajar en tu computadora. Para esto se necesita la URL 
de repositorio y ejecutar en terminal de la computadora el comando:
	'git clone [DIRECCION HTTPS]'
Una vez que ya tengas clonado el repositorio debemos saber como obtener
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
