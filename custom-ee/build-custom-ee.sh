#!/bin/bash

### Developed on Debian 12

sudo apt update && sudo apt upgrade -y

sudo apt install python3-pip python3-venv python3-virtualenv virtualenv -y

python3 -m venv env

source env/bin/activate

pip install wheel ansible-builder

ansible-builder build --tag custom-ee --context ./context --container-runtime docker --verbosity=3

