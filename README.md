## Cookiecutter - create template for Python repository

1. Rename all your files or folders with the keyword cookiecutter followed by the item name
    example: folder        -> {{cookiecutter.documents}}
                python file   -> {{cookiecutter.main}}.py
2. Add cookiecutter.json at the root of your project where you define the item names from above
3. Push the folder structure to your repo (Github, Azure Devops)

## Cookiecutter - reuse template from Github (windows)

1. Create a new folder where you will store the repository you want to clone.
2. Make sure your terminal is pointing to your new folder.
3. Create a virtual environment: python -m venv environment
4. Activate environment: .\environment\Scripts\activate
5. Install cookiecutter lib for pyton: pip install cookiecutter
6. Clone repo with cookiecutter: cookiecutter https://github.com/youruser/CookiecutterRepo.git

## Other tips

1. When using step #6 from above, yout repo will be cloned in the .cookiecutter folder
2. For working with a specific branch you can just copy its content in the .cookiecutter folder and use that version for testing

## Documentation

- [cookiecutter-library](https://pypi.org/project/cookiecutter-python/)
- [cookie-cutter-documentation](https://cookiecutter.readthedocs.io/en/stable/)

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
