pipeline{
    agent any
   
	parameters {
		booleanParam defaultValue: false, description: 'To deploy service(s) check in Create_Infra and a service parameter(s). Example: Create_Inra + Aurora', name: 'Create_Infra'
		booleanParam defaultValue: false, description: 'This will deploy GCP Compute Engine', name: 'ComputeEngine'
	}
	stages{
        stage('GiT Checkout'){
            steps{
                script{
                        git branch: 'dev', credentialsId: 'jenkins-infadwh', url: 'https://github.com/infadwh/lab.git'
                        sh 'pwd'
                }
            }
        }
		stage('Deploy Infrastructure'){
            steps{
				sh """
					export WORKSPACE=${WORKSPACE}
					cd Dev/
					chmod +x create_infra.sh
					./create_infra.sh
				"""
			}
        }
    }
	
}
