data "archive_file" "welcome" {
  type        = "zip"
  source_file = "welcome.py"
  output_path = "outputs/welcome.zip"
}


