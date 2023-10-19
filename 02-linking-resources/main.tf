resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket"
}

# The string "aws_s3_bucket.my_bucket" is what is called "the address"
# while the "bucket" one is the "attribute".

# "Arguments" are the availabe "inputs" you can specify to create a resource
# while "Attributes" are the availabe "outputs" of the resource. Most of the
# time you will find out that arguments become attributes

resource "aws_s3_object" "my_file" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "path/to/my/file.txt"
  source = "example.txt"
}
