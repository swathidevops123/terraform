resource "aws_instance" "demo" {
					ami 				      =     "ami-0667149a69bc2c367"
					instance_type		      =     "t2.nano"
					monitoring			      =     "false"
					key_name			      =     "swathidevops"
					subnet_id			      =     "subnet-02c19e644e334f257"
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
