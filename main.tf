## Bucket S3
resource "aws_s3_bucket" "meu_backet" {
  bucket = "terraform-bucket-alfredo"
}

resource "aws_s3_object" "ficheiro" {
  bucket  = aws_s3_bucket.meu_backet.id
  key     = "hello.txt"
  content = "ola da aws com terraform "
}

## instace of ec2

resource "aws_instance" "my_instance" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance"
  }

}

