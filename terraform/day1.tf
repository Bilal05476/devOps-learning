/*
resource "local_file" "devops" {
	filename = "/home/bilal/Desktop/Projects/terraform-learning/day1/automated.txt"
	content = "Hello world from automated terraform"
}

resource "random_string" "rand-str" {
length = 16
special = true
override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "rand-str" {
value = random_string.rand-str[*].result
}
*/
