pipeline {
    agent any

    tools {
        jdk 'JDK 17'  //JDK 17 
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Ruwais-zaid/DEVOPS_PROJECT/blob/master/CloudSimExample1.java'
            }
        }

        stage('Compile Java File') {
            steps {
                sh 'javac -cp .:cloudsim.jar CloudSimExample1.java'
            }
        }
        stage('Download CloudSim JAR') {
    steps {
        sh 'wget -q https://github.com/Cloudslab/cloudsim/releases/download/v5.0/cloudsim-5.0.jar -O cloudsim.jar'
    }
        }




        stage('Run Simulation') {
            steps {
                sh 'java -cp .:cloudsim.jar CloudSimExample1'
            }
        }
    }

    post {
        success {
            echo "✅ Simulation ran successfully!"
        }
        failure {
            echo "❌ Something went wrong during execution."
        }
    }
}
