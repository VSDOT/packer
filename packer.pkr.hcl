{
  "builders": [
    {
      "type": "amazon-ebs",
      "region": "us-east-1",
      "source_ami": "ami-355409876542", // Source AMI ID
      "instance_type": "t2.micro",
      "ssh_username": "ubuntu",
      "ami_name": "golden-image-{{timestamp}}"
    }
  ],
  provisioners": [
        {
            "type": "shell",
            "inline":[
                "sudo add-apt-repository ppa:openjdk-r/ppa",
                "sudo apt-get update",
                "sudo apt-get install -y openjdk-8-jdk",
                "java -version",
                "sudo apt-get install -y tomcat8"
            ]
        }
    ]
}

