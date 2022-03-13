FROM ubuntu
RUN apt update
RUN apt install build-essential -y
RUN apt-get install vim -y
RUN apt-get install sudo -y
RUN echo 'PS1="\033[032;1m\w\033[032;2m(\u)\033[032;0m\033[032;1m|\033[0m "' >> ~/.bashrc
RUN . ~/.bashrc
ENV PATH="/home/acos/bin:${PATH}"
ENTRYPOINT ["tail", "-f", "/dev/null"]
