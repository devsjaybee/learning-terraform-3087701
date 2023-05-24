output "instance_ami" {
<<<<<<< HEAD
 value = aws_instance.blog.ami
}

output "instance_arn" {
 value = aws_instance.blog.arn
=======
  value = aws_instance.web.ami
}

output "instance_arn" {
  value = aws_instance.web.arn
>>>>>>> 8779a1b (Create security group)
}
