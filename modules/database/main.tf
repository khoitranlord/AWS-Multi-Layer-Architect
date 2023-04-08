resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "123456789"
}


resource "aws_db_instance" "database"{
    allocated_storage = 20
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t2.micro"
    identifier = "${var.project}-db-database"
    name       = var.project
    username   = "admin"
    password   = random_password.password.result
    db_subnet_group_name = var.database_subnet_group
    vpc_security_group_ids = [var.sg.db]
    skip_final_snapshot = true
}
