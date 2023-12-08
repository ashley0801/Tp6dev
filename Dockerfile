FROM openjdk:11-jdk

WORKDIR /app

# Copier le fichier .jar de votre application dans le répertoire de travail du conteneur
COPY target/TP6Devops-1.0-SNAPSHOT.jar /app 

# Exposer le port que votre application utilise
EXPOSE 8080

# Spécifier la commande de démarrage de l'application
CMD ["java", "-jar", "mTP6Devops-1.0-SNAPSHOT.jar"]
