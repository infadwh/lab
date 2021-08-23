if [[ $Create_Infra == true ]]
then
	export action="apply"
	export process="Creating"
	elif [[ $Delete_Infra == true ]]
	then
	export action="destroy"
	export process="Destroying"
	elif [[ $Trigger_Code_Simulator == true ]]
	then
	export action="apply"
	else
		echo "Select either of Create_Infra or Delete_Infra"
		exit 1
fi

if [[ $ComputeEngine == true ]]
then
	cd ${WORKSPACE}/Dev
	echo "########### $process ComputeEngine for $project in $env environment ###########"
	cd ComputeEngine
	sudo rm -rf .terraform
	sudo terraform init
	sudo terraform workspace select $env || terraform workspace new $env
	sudo terraform workspace list
	sudo terraform $action -var-file=variables.tfvars -auto-approve
	#terraform destroy -auto-approve
	set -xe
	echo "########## EC2 $process is complete ###########"
fi
