FROM nginx:latest
WORKDIR /opt/
COPY . /opt/
EXPOSE 8000
