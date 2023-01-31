# Project

This is a python repository sample on how to build and layer your monorepo.
This example uses Github Actions and Terraform.

## Structure example description

    .
    ├── .github               # Github Action folders that enables for CI and CD for your repo
    │   ├── actions           # Add custom actions
    │   ├── scripts           # Add custom scripts
    │   ├── workflows         # Build your Github Actions by adding a workflow file
    ├── documents             # Documentation about the project
    │   ├── design            # Add your designs and architectures here
    │   ├── spikes            # Holds code samples for investigation
    │   ├── adr               # ADR (Architecture Decision Record)
    ├── assets                # Holds content like 'jpg', 'img', 'css', 'fonts's
    ├── infrastructure        # Holds your infrastructure as code, in our case Terraform
    │   ├── terraform         # Holds all terraform files
    │   ├── variables         # Holds all terraform variables
    ├── lib                   # Standard folder for third party solutions and libraries
    ├── src                   # Source code folder that holds all the solutions
    │   ├── python-solution
    ├── README.md

## CI pipeline

This is an initial sample of a CI pipeline for our repository. The pipeline uses super-linter which is a combination of linters, in order to validate the entire source code.
This means that python, yaml, .md and tf files will be validated all together, based on current configuration
Code secrets scan to ensure no sensitive information or credentials are being committed.

## Template for pull request

In the .github folder there is a pull_request_template.md which contains an example of how to document each of your commits and pull requests

## Documentation

- [super-linter](https://github.com/github/super-linter)
- [github-actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)
- [monorepo](https://www.atlassian.com/git/tutorials/monorepos)
- [terrafrom](https://developer.hashicorp.com/terraform/intro)
