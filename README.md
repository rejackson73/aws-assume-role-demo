# NOTE
Forked from the information below.  This repository automates the installation of the awscli but also requires you to insert your own ssh keys.

# Setting up AWS EC2 assume role with Terraform

Please see accompanying [blog post](http://echorand.me/setting-up-aws-ec2-assume-role-with-terraform.html) first. I did a talk
at the [Sydney Infra Coders Meetup](https://www.meetup.com/en-AU/Infrastructure-Coders-Sydney/events/248492783/). The slides are [here](./AWS%20EC2%20Assume%20Role%20with%20Terraform.pdf).

## Terraform Configuration


- [Problem demo](./terraform_configuration/problem_demo)
- [Solution demo](./terraform_configuration/solution_demo)
- [Solution with AWS root user demo](./terraform_configuration/solution_demo_root_user)


For applying any of the changes above, you need to setup your AWS account, setup
your `~/.aws/config` and `~/.aws/credentials` files appropriately and then specify
the profile you want to use via the `AWS_PROFILE` environment variable.

You may also need to run `terraform init` before you are able to apply any of the changes.
