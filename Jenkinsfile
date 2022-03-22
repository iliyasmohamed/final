node {
    def app

    stage('Clone repository') {
              checkout scm
    }

    stage('Build image') {
         app = docker.build("image-api:${env.BUILD_ID}")
    }
    stage('Test image') {
        sh 'echo ${env.BUILD_ID}'
    }
}
