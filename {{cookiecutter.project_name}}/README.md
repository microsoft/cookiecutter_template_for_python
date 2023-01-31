# Project

This repository provides a sample of how to construct and organize a Python monorepo.
The sample utilizes Github Actions and Terraform.

## Structure example description

    .
    ├── .github               # Github Action folders for CI and CD for your repo
    │   ├── actions           # Add custom actions
    │   ├── scripts           # Add custom scripts
    │   ├── workflows         # Build your Github Actions by adding a workflow file
    ├── documents             # Documentation about the project
    │   ├── design            # Add your designs and architectures here
    │       ├── assets        # Holds binary content like 'jpg', 'png', 'css', etc.
    │   ├── spikes            # Holds code samples for investigation
    │   ├── adr               # ADR (Architecture Decision Record)
    │       ├── assets        # Holds binary content like 'jpg', 'png', 'css', etc.
    ├── assets                # Holds binary content like 'jpg', 'png', 'css', etc.
    ├── infrastructure        # Holds your infrastructure as code, in our case Terraform
    │   ├── terraform         # Holds all terraform files
    │   ├── variables         # Holds all terraform variables
    ├── lib                   # Standard folder for third party solutions and libraries
    ├── src                   # Source code folder that holds all the solutions
    │   ├── python-solution
    ├── README.md

## CI pipeline

This is a base sample of a continuous integration (CI) pipeline for the repository. The pipeline uses super-linter, a fusion of multiple linters, to validate the entire source code, including Python, YAML, .md, and TF files, as specified in the current configuration. It also performs a code secrets scan to verify that no confidential information or credentials are being committed.

## Template for pull request

In the .github folder there is a pull_request_template.md which contains an example of how to document each of your commits and pull requests

## Documentation

- [super-linter](https://github.com/github/super-linter)
- [github-actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)
- [monorepo](https://www.atlassian.com/git/tutorials/monorepos)
- [terrafrom](https://developer.hashicorp.com/terraform/intro)
