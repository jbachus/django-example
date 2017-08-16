#!/usr/bin/dumb-init /bin/ash

#Give DB/redis 15 seconds to start before running migrations
sleep 15

#Run DB migrations
python3 manage.py migrate

#Start the server
python3 manage.py runserver 0.0.0.0:8000
