/*
resource "local_file" "devops-var" {
	filename = var.filename
	content = var.content
}


output "devops_op_trainer" {
  value = var.devops_op_trainer
}


resource "local_file" "map-content" {
	filename = var.filename
	content = var.map_content["content1"]
}



resource "local_file" "list-content" {
  filename = var.filename
  content  = var.list_content[1]
}


output "aws_instance" {
  value = var.aws_ec2_object.instances
}

output "tf_batch_students" {
  value = var.number_of_students
}

*/
