pipeline{
	agent {
		dockerfile true
	}
	environment {
        registry = "ghorpap/ebugtracker"
        registryCredential = 'ghorpap'
        dockerImage = ''
        }  

		stages {
			stage('Cloning our Git') {
               			 steps {
                    			git branch:'master', url:'https://github.com/pjptl/Ebugtracker_Latest.git'
                     		        }   
		                                  }
			
            			stage('Building our image') {
                 					steps {
                     						script {
                         						dockerImage = docker.build registry + ":$BUILD_NUMBER"

                 						        }
                     						}

            							}
			         stage('Deploy our image') {
                                                         steps {
                                                                script {
                        						docker.withRegistry( '', registryCredential ) {
                            						dockerImage.push()

                        						}

                    							}

               							 }

            						    }
				stage('Cleaning up') {
               						steps {
                  						 bat "docker rmi $registry:$BUILD_NUMBER"

               							}
							}
		}
}
