#!/bin/bash

pip install -r requirements.txt

python3 manage.py collectstatic --no-input

python3 manage.py migrate --no-input