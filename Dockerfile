FROM ubuntu:latest

# Configure the time zone to prevent apt from asking the user for the timezone during configuration of the dependency tzdata:
RUN ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime
RUN apt update && apt install -y mkdocs git

COPY action.sh /action.sh
RUN chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
