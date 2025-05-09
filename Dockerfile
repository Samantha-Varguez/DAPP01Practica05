# Imagen base Tomcat con JDK 11
FROM tomcat:9.0-jdk11

# Limpia aplicaciones por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia el WAR generado por Maven/NetBeans al contenedor
COPY target/DAPP01Practica05-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/DAPP01Practica05-0.0.1-SNAPSHOT.war

# Expone el puerto 8080
EXPOSE 8080

# Ejecuta Tomcat al iniciar el contenedor
CMD ["catalina.sh", "run"]
