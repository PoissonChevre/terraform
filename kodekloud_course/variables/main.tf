resource "local_file" "test_tf" {
	filename= var.jedi["filename"]
	content= var.jedi["content"]
}

