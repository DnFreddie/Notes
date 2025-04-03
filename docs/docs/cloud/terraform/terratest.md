---
title: "terratest"
date: 2025-04-01T09:17:41+02:00
draft: false
tags:
  - terraform
  - golang
  - testing
---
[Docs for aws](https://pkg.go.dev/github.com/gruntwork-io/terratest@v0.48.2/modules/aws)
[Article]()

* It's a golang libary for unit testing terraform
    * Common issues [TerraformDir](https://stackoverflow.com/questions/60790832/terratest-does-not-find-terraform-on-mac)


```terraform
# Example of small server deployment

terraform {
  required_version = ">= 0.12.26"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami                    = "ami-0d5d9d301c853a04a"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = <<EOF
#!/bin/bash
echo "Hello, World!" > index.html
nohup busybox httpd -f -p 8080 &
EOF
}

resource "aws_security_group" "instance" {
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "public_ip" {
  value = aws_instance.example.public_ip
}

```

## Examples
[Official example](https://terratest.gruntwork.io/examples/)
```go
// Example terraform test
package test

import (
	"fmt"
	"testing"
	"time"

	http_helper "github.com/gruntwork-io/terratest/modules/http-helper"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraformAwsHelloWorldExample(t *testing.T) {
	t.Parallel()

	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples",
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	publicIp := terraform.Output(t, terraformOptions, "public_ip")

	url := fmt.Sprintf("http://%s:8080", publicIp)
	http_helper.HttpGetWithRetry(t, url, nil, 200, "Hello, World!", 30, 5*time.Second)
}
```
