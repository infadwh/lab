pipeline{
    agent any
   
    tools {
        terraform 'terraform'
    }
    
    environment {
        env='dev'
        GCP_DEFAULT_REGION='us-central-1'
    }
   
	parameters {
		booleanParam defaultValue: false, description: 'To deploy service(s) check in Create_Infra and a service parameter(s). Example: Create_Inra + Aurora', name: 'Create_Infra'
		booleanParam defaultValue: false, description: 'This will deploy GCP Compute Engine', name: 'ComputeEngine'
	}
	stages{
        stage('GiT Checkout'){
            steps{
                script{
                        git branch: 'dev', credentialsId: 'infadwh', url: 'https://github.com/infadwh/lab.git'
                        sh 'pwd'
                }
            }
        }
		stage('Deploy Infrastructure'){
            steps{
				sh """
					export WORKSPACE=${WORKSPACE}
					cd Dev/
					whoami
					chmod +x create_infra.sh
					bash ./create_infra.sh
				"""
			}
        }
    }
	
}
