#!/usr/bin/dumb-init /bin/ash

#Give DBs 5 seconds to start before running migrations
sleep 5

#Run DB migrations
python3 manage.py migrate

#Start the server
python3 manage.py runserver 0.0.0.0:8000
