# Étape 1 : Build
FROM gradle:7.6-jdk17 AS build

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de configuration Gradle et les sources
COPY build.gradle settings.gradle ./
COPY src ./src

# Construire l'application
RUN gradle build --no-daemon

# Étape 2 : Exécution
FROM openjdk:17-jre-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le JAR construit depuis l'étape de build
COPY --from=build /app/build/libs/*.jar /app/app.jar

# Exposer le port utilisé par l'application
EXPOSE 8086

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
