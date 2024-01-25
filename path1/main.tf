resource "local_file" "test" {
 content  = local.content
 filename = "${path.module}/file1.bar"
}

resource "random_bytes" "jwt_secret" {
  length = 64
}

resource "random_id" "server" {
  
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    new_id=var.new_id
  }

  byte_length = 8
}
resource "random_integer" "priority" {
  min = 1
  max = var.max_num
  keepers = {
    # Generate a new integer each time we switch to a new listener ARN
  
  }
}
locals{ 
  content=var.content
  db_name="mysql"

}