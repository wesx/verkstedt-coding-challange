from nginx
# update packages, as even base images are not always up to date
RUN apt-get update -y && apt-get upgrade -y
# copy static content to docker container
COPY landingpage /usr/share/nginx/html
