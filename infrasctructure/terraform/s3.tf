resource "aws_s3_bucket" "dl" {
  bucket = "<datalake-name>",
  acl    =  "private"
  
  tags = {
    <TAG> = "NAME",
    <TAG> = "NAME"
  }
  
  server_side_encryption_configuration_by_default{
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

}

