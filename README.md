# interview-ivana

## API
Desarrollar una API que exponga los siguientes endpoints:

### GET /get_ford_cars
Devuelve una lista de autos cuya marca es "FORD".
Para obtener la lista de autos completa, consumir el endpoint /car_listing_presentation?list_length=100 (pasar 100 como parámetro).
La API a consumir tiene la siguiente URL de base: http://server.cocoche.com.ar
Aclaración:
El sistema de donde se obtiene la lista de autos, Cocoche, actualiza su base de autos una vez por semana.

### POST /create_user
El endpoint recibe como parámetro un JSON con el siguiente formato:
{
"name": "string",
"phone": "string",
"email": "string",
}
Y devuelva otro JSON:
{
"id": "string",
"createdAt": "dd-mm-AAAA"
}
El sistema deberá persistir los 5 campos (3 del request + id random + fecha de creación).
Si el request intenta registrar un email existente, el sistema debe arrojar el error correspondiente.
Los usuarios creados deben ser guardados en una base de datos SQL. Se puede elegir entre alguna de las siguientes:
PostgreSQL, MariaDB, MySQL.
Especificar las credenciales de acceso a la base en este mismo archivo.
Usuario Admin:
Contraseña Admin:
Nombre de la BD:
