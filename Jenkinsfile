pipeline {
    agent {label "First"}

    stages {
        stage('Pulling repo') {
            steps {
                git url: '', branch: 'main'
            }
        }

        stage('Running Script') {
            steps {
                echo "Checking System Health.."
                sh 'chmod +x ./scripts/system_health_check.sh'
                sh './scripts/system_health_check.sh'
            }
        }

        stage('Build Artifact') {
            steps {
                archiveArtifacts artifacts:  'system_*.txt', fingerprint: true
            }
        }
    }
}