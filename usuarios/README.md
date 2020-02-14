# README

#credenciales acceso a la base de datos postgresql

username db: ivana

password:root

#Pasos para ejecutar api POST USUARIOS:

-git clone https: git@gitlab.com:ibis-dev/interview-ivana.git

-cd usuarios

-bundle install

-rake db:create

-rake db:migrate

-rails s



#Para pruebas se utilizó Postamn, para ver captura de pantalla: 
https://gitlab.com/ibis-dev/interview-ivana/-/blob/backend-frontend/usuarios/captura.png


#se enviaron los siguiente datos de ejemplo:

{

 "name": "Maria",

 "phone":"0284382214",

 "email":"iva.moyanoo6@gmail.com"
	
}


#en caso de no existir el email en la base de datos devuelve:

{

    "status": "SUCCESS",

    "message": "Usuario creado con éxito!",

    "data": {

        "table": {

            "name": "Maria",

            "phone": "0284382214",

            "email": "iva.moyanoo6@gmail.com",

            "id": 10,

            "createdAt": "2020-02-14"

        },

        "modifiable": true

    }
}

#en caso de existir email en la base de datos devuelve :

{

    "status": "ERROR",

    "message": "Ya existe un usuario con este email"

}

#(captura de pantalla en https://gitlab.com/ibis-dev/interview-ivana/-/blob/backend-frontend/usuarios/capura2.png)