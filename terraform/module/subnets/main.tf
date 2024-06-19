resource "aws_subnet" "p_s_1" {
  vpc_id            = data.aws_vpc.vpc-07f57eaa9acb581f1id.id
  availability_zone = var.az_1
  cidr_block        = cidrsubnet(data.aws_vpc.s.cidr_block, 4, 1)
}