resource "aws_s3_bucker_object" "job_spark"{
  bucket = aws_s3_bucket.dl.id
  key    = "emr-code/pyspqrk/job_spark_from_tf.py"
  acl    = "private"
  source = "../job_spark.py"
  etag   = filemd5("job_spark.py")
}
resource "aws_s3_bucker_object" "delta_insert"{
  bucket = aws_s3_bucket.dl.id
  key    = "emr-code/pyspqrk/01_delta_spark_insert.py"
  acl    = "private"
  source = "../etl/01_delta_spark_insert.py"
  etag   = filemd5("../etl/01_delta_spark_insert.py")
}
resource "aws_s3_bucker_object" "delta_upsert"{
  bucket = aws_s3_bucket.dl.id
  key    = "emr-code/pyspqrk/02_delta_upsert.py"
  acl    = "private"
  source = "../etl/01_delta_spark_upsert.p.py"
  etag   = filemd5("../etl/01_delta_spark_upsert.p.py")
}
