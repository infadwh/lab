module "compute-instance" {
	project_id             	= var.project_id
	source                  = "../../modules"
	vm_name 				= var.vm_name
	machine_type	 		= var.machine_type
	zone 					= var.zone
	image 					= var.image
	//interface 				= var.interface
	network 				= var.network
    sub_network             = var.sub_network
}
