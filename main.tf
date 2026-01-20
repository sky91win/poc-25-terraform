module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  az          = "us-east-1a"
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id     = module.vpc.subnet_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "poc25-app-bucket-example-123"
}
