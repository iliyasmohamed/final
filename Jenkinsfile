node {
    def app

    stage('Clone repository') {
              checkout scm
    }

    stage('Build image') {
         app = docker.build("iliyasll/api-img-srvr:${env.BUILD_ID}")
    }
    stage('Test image') {
    }
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'git') {
        app.push()
}
}
}
