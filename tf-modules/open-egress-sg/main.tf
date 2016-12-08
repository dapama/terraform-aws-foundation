# define security group for the custom services and egress on the leader
resource "aws_security_group" "main" {
    name = "${var.name}"
    vpc_id = "${var.vpc_id}"
    tags {
        Name = "${var.name}"
        Description = "Allow open egress for ${var.name}"
    }
    # unrestricted outbound
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
output "id" {
    value = "${aws_security_group.main.id}"
}
output "name" {
    value = "${aws_security_group.main.name}"
}
