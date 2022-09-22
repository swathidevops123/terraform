resource "aws_instance" "demo" {
					ami 				      =     "ami-0a531e5afd4d5f3ad"
					instance_type		      =     "t2.micro"
					monitoring			      =     "false"
					key_name			      =     "junedevops"
					subnet_id			      =     "subnet-006956d784051a51c"
					associate_public_ip_address   =     "true"
					source_dest_check		      =     "true"
					root_block_device {
					volume_type			      =     "gp2"
					volume_size			      =     "100"
					delete_on_termination	      =     "false"
					}
					ebs_block_device {
                    encrypted   = "true"
                    device_name = "/dev/xvdd"
                    volume_size = "40"
                    volume_type = "gp2"
                    }

					}
