# Primero que nada 
git clone https://github.com/JuanManuelPrividera/API_RecomendacionColaboradores.git

cd API_RecomendacionColaboradores 

# Base de datos
El servicio cuenta con persistencia propia pero para utilizarlo en local hara falta que se le configure el acceso a la base de datos en el archivo config/database.yml 
Solo con cambiar usuario y contraseña para que anden en la bd local ya estaria listo.

## Este es el databse.yml

```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  username: {tu-username-de-mysql}
  password: {tu-password-de-mysql}
  host: localhost

development:
  <<: *default
  database: {nombre-del-esquema-en-la-bd}


test:
  adapter: sqlite3
  database: api_test
  pool: 5
  timeout: 5000

```

# Inicializar api

Desde el root del proyecto en la terminal

```
bundle install --gemfile Gemfile
rails db:create
rails db:migrate
```
Esto instala las dependencias necesarias y crea el esquema en la bd que se haya definido
Si tira error de que no tiene Rails: 
```
gem install rails 
```


## Para cargarle datos de prueba ejecutar en la terminal:

```
rake datos_prueba:crear
```

Eso crea unos colaboradores y los persiste, hacer luego de que se haya creado el esquema en mysql. 
Por ultimo levantamos la api y probamos

```
rails s
```
Levanta el servidor el puerto 3000 por defecto.
Con eso ya se pueden realizar solicitudes a la api.

```
curl 'http://127.0.0.1:3000/simeal/api/colabs/recomendacion?puntos=20&donaciones=0&max=5' | jq


{
  "colaboradores": [
    {
      "id": 1,
      "nombre": "Julian",
      "apellido": "Perez",
      "contacto": "julian@gmail.com",
      "puntos": 100.0,
      "cantDonaciones": 1
    },
    {
      "id": 2,
      "nombre": "Roman",
      "apellido": "Hernandez",
      "contacto": "roman@gmail.com",
      "puntos": 100.0,
      "cantDonaciones": 1
    },
    {
      "id": 3,
      "nombre": "Carlos",
      "apellido": "Mesias",
      "contacto": "carlos@gmail.com",
      "puntos": 100.0,
      "cantDonaciones": 1
    },
    {
      "id": 4,
      "nombre": "Tomas",
      "apellido": "Gonzales",
      "contacto": "tomas@gmail.com",
      "puntos": 100.0,
      "cantDonaciones": 1
    },
    {
      "id": 5,
      "nombre": "Pedro",
      "apellido": "PicaPiedra",
      "contacto": "pedro@gmail.com",
      "puntos": 100.0,
      "cantDonaciones": 1
    }
  ]
}

```


