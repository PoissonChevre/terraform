# Create a local file from the "jedi" map variable
resource "local_file" "test_tf" {
  filename = var.jedi["filename"]
  content  = var.jedi["content"]
}
