Descargar la Segunda Parte de Servicios cuenta y movimiento: 

https://github.com/BRAYAN2001-DEL/CuentaBackend


Nota:

Para levantar el servicio kafka y zookeeper  es:

--dentro de la carpeta de apache kafka:

-1 levantar el server zookeeper
bin\windows\zookeeper-server-start.bat config\zookeeper.properties


--2 levantar el server kafka

bin\windows\kafka-server-start.bat config\server.properties


--3 crear un evento:

bin\windows\kafka-console-producer.bat --topic test-topic --bootstrap-server localhost:9092



-4 para consumir los eventos:

bin\windows\kafka-console-consumer.bat --topic test-topic --bootstrap-server localhost:9092 --from-beginning





Instrucciones:
Base de datos:
1. La base de datos la contiene el archivo BaseDatos.sql contiene el backup crearla con el nombre: persona-db
Documento Json:
2. El archvio llamado  apiPersonas.postman_collection.json contiene la estructura y documentacion para las pruebas de los api
Proyecto Java
3. El proyecto java se encuentra estructurado mediante mvc para fortalecer el codigo limpio y los principios de programacion.
