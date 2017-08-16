FROM python:3-alpine
EXPOSE 8000
#Install dumb-init for child process signal forwarding
ADD https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64 /usr/bin/dumb-init

#Add a non-privileged user to run as
RUN adduser -D app && \
    chmod +x /usr/bin/dumb-init
WORKDIR /home/app

#This is a layer above adding code so the pip install is cached on code changes
#and only has to be rebuilt if requirements.txt changes
ADD requirements.txt .
RUN apk add --no-cache postgresql-client && \
    apk add --no-cache --virtual builddeps postgresql-dev build-base && \
    pip install -r requirements.txt && \
    apk del builddeps

#Add our code and change ownership to the app user
ADD helloworld/ /home/app/
RUN chown -R app.app . && \
    chmod +x /home/app/entrypoint.sh

#Don't run as root
USER app

#Use dumb-init as pid 0
ENTRYPOINT ["/usr/bin/dumb-init","--"]
CMD ["/home/app/entrypoint.sh"]

