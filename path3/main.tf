resource "local_file" "test" {
 content  = var.listting[2]
 filename = "${path.module}/file3.bar"
}
