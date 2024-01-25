resource "local_file" "test" {
 content  = var.mapping["purpose"]
 filename = "${path.module}/file2.bar"
}
