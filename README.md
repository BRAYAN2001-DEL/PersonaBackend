Descargar la Segunda Parte de Servicios cuenta y movimiento: 

https://github.com/BRAYAN2001-DEL/CuentaBackend


Nota:

Para levantar el servicio kafka es:

--dentro de la carpeta de apache kafka:

-1 levantar el server zookeeper
bin\windows\zookeeper-server-start.bat config\zookeeper.properties


--2 levantar el server kafka

bin\windows\kafka-server-start.bat config\server.properties


--3 crear un evento:

bin\windows\kafka-console-producer.bat --topic test-topic --bootstrap-server localhost:9092



-4 para consumir los eventos:

bin\windows\kafka-console-consumer.bat --topic test-topic --bootstrap-server localhost:9092 --from-beginning
