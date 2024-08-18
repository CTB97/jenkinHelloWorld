pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Cloning project'
                // Utiliser checkout scm au lieu de git clone
                checkout scm

                echo 'build image'
                // Utiliser la syntaxe de shell pour lister les fichiers
                sh 'docker build -t myapp:latest .'
            }
        }

        stage('Test') {
            steps {
                echo 'Test step'
                // Ajoutez ici des étapes de test spécifiques si nécessaire
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy step'
                // Ajoutez ici les étapes de déploiement spécifiques
            }
        }
    }
}
