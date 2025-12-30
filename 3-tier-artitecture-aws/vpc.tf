resource "aws_vpc" "demovpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "Demo VPC"
  }
}
#creating internet gateway
resource "aws_internet_gateway" "demogateway" {
  vpc_id = "${aws_vpc.demovpc.id}"
}

# Creating Route Table
resource "aws_route_table" "route" {
    vpc_id = "${aws_vpc.demovpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.demogateway.id}"
    }

    tags = {
        Name = "Route to internet"
    }
}

# Associating Route Table
resource "aws_route_table_association" "rt1" {
    subnet_id = "${aws_subnet.public-subnet-1.id}"
    route_table_id = "${aws_route_table.route.id}"
}

# Associating Route Table
resource "aws_route_table_association" "rt2" {
    subnet_id = "${aws_subnet.public-subnet-2.id}"
    route_table_id = "${aws_route_table.route.id}"
}
