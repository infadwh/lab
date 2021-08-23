module "compute-instance" {
	source       = "../../modules/ComputeEngine"
	project_id   = var.project_id
	vm_name 	 = var.vm_name
	machine_type = var.machine_type
	zone 		 = var.zone
	image 		 = var.image
	network 	 = var.network
        sub_network  = var.sub_network
}
