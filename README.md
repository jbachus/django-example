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
