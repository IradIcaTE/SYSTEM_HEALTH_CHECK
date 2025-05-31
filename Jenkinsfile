pipeline {
    agent {label "First"}

    stages {
        stage('Pulling repo') {
            steps {
                git url: 'https://github.com/IradIcaTE/SYSTEM_HEALTH_CHECK.git', branch: 'main'
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
                archiveArtifacts artifacts:  'system_report*', fingerprint: true
            }
        }
    }
}