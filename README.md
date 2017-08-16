# Django Docker Example
This project is an example of using docker-compose to run a django hello world application

### Prerequisites: ###
1. Docker (https://www.docker.com/community-edition)
2. docker-compose (https://docs.docker.com/compose/)
### Usage: ###
```
mkdir django-postgres
git clone https://github.com/jbachus/django-example.git
cd django-example
docker-compose build
docker-compose up -d
```
Give it ~15 seconds to start, then open http://localhost:8000 in your browser.

### Cleanup: ###
`docker-compose down`

#### Notes: ####
This is just a proof of concept and stores the postgresql data files in your django-postgres folder.  Edit the docker-compose.yml to put it somewhere more permanent if you want to persist the data.

