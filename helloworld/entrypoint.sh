#!/usr/bin/dumb-init /bin/ash
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000
