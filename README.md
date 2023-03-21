# cdk-pip-tools
Template for using pip-tools to manage dependencies in a cdk project.

## Usage
- `make compile_env_reqs` searches for all `requirements.in` files, concatenates their contents into `env-requirements.in` and compiles it.
- `make compile_all_reqs` first executes `compile_env_reqs` and then compiles all other `requirements.in` files as well.
- `make update_all_reqs` removes all `requirements.txt` files and then runs `compile_all_reqs`, essentially upgrading all library versions.
