# Project

This repository provides a sample Python monorepo with CI, tests, linting and CD to Azure.
The sample utilizes Github Actions, SuperLinter and Bicep.

## CD Quickstart

To enable the CD pipeline that deploys resources to Azure, you will need to create a Service Principal in Azure that will be used by the agent to authenticate and create resources. To do so follow these steps: [Use the Azure login action with a service principal secret](https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-portal%2Cwindows#use-the-azure-login-action-with-a-service-principal-secret)

## Structure example description

    .
    ├── .github                     # Github Actions folders for CI/CD
    │   ├── actions                 # Custom actions
    │   ├── linters                 # Linter exception files
    │   ├── scripts                 # Custom shell scripts
    │   ├── workflows               # Github Actions workflow files
    ├── documents                   # Documentation about the project
    │   ├── design                  # Designs and architectures
    │   │   ├── assets              # Binary content like 'jpg', 'png', etc.
    │   ├── spikes                  # Code and assets created during 'spikes' (tech investigation) 
    │   ├── adr                     # ADRs (Architecture Decision Records)
    │   │   ├── assets              # Binary content like 'jpg', 'png', etc.
    ├── assets                      # Binary content like 'jpg', 'png', etc.
    ├── infrastructure              # Infrastructure as Code (IaC) templates
    │   ├── bicep                   # IaC Bicep files
    │   │   ├── modules             # Bicep main modules (e.g. infrastructure)
    │   │   ├── resource-templates  # Azure resource templates (e.g. storage)
    │   │   ├── variables           # Bicep deployment common and environment parameters 
    ├── lib                         # Standard folder for third party solutions and libraries
    ├── src                         # Source code folder for the Python project itself
    │   ├── python-solution         # Custom named solutions
    │   ├── tests                   # Solution unit tests 
    ├── README.md

## CI pipeline

This is a base sample of a continuous integration (CI) pipeline for the repository. The pipeline uses super-linter, a fusion of multiple linters, to validate the entire source code, including Python, YAML and .md files, as specified in the current configuration. It also performs a code secrets scan to verify that no confidential information or credentials are being committed to the repo. The pipeline runs on both PR and push to main.

## Template for pull request

In the .github folder there is a pull_request_template.md which contains an example of how to document each of your commits and pull requests

## Documentation

- [super-linter](https://github.com/github/super-linter)
- [github-actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions)
- [monorepo](https://www.atlassian.com/git/tutorials/monorepos)
- [terrafrom](https://developer.hashicorp.com/terraform/intro)
