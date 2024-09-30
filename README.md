# Inicializar api

Desde el root del proyecto en la terminal

```rails s```

Levanta el servidor el puerto 3000 por defecto.
Con eso ya se pueden realizar solicitudes a la api

# Base de datos
El servicio cuenta con persistencia propia pero para utilizarlo en local hara falta que se le configure el acceso a la base de datos en el archivo config/database.yml 
Solo con cambiar usuario y contraseña para que anden en la bd local ya estaria listo.

Se le pueden cargar datos de prueba desde la terminal haciendo por ejemplo:

```
rails c
Colaborador.create(nombre:"pedro", apellido:"gonzales",contacto: "pgonzales@gmail.com,puntos: 100, cantDonaciones:2)"
```
Eso crea un colaborador y lo persiste. 
Si se quiere que solo quede en memoria usar .new en lugar de .create. Tambien puede persistirse usando .new y luego .save.
