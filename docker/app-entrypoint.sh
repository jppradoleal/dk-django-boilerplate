#!/bin/bash

wait-for-it db:5432 -- python -m manage migrate
python -m debugpy --listen 0.0.0.0:5678 manage.py runserver 0.0.0.0:8000