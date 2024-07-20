# Usa la imagen base de JHipster
FROM jhipster/jhipster:8.2.1

# Copia el contenido de tu aplicación al directorio de la aplicación en el contenedor
COPY ./ /home/jhipster/app

# Define el directorio de trabajo
WORKDIR /home/jhipster/app

# Construye la aplicación usando Maven
RUN ./mvnw package -DskipTests

# Expone el puerto en el que la aplicación correrá
EXPOSE 8080

# Define el comando para ejecutar la aplicación
CMD ["java", "-jar", "target/gateway-0.0.1-SNAPSHOT.jar"]


