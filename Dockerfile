FROM ubuntu
RUN apt update
RUN apt install build-essential -y
RUN apt-get install vim -y
RUN apt-get install sudo -y
RUN echo 'PS1="\033[032;1m\w\033[032;2m(\u)\033[032;0m\033[032;1m|\033[0m "' >> ~/.bashrc
RUN . ~/.bashrc
RUN echo 'set tabstop=4' >> ~/.vimrc
RUN echo 'set shiftwidth=4' >> ~/.vimrc
RUN echo 'set softtabstop=4' >> ~/.vimrc
RUN echo 'set expandtab' >> ~/.vimrc
RUN echo 'set number' >> ~/.vimrc
ENV PATH="/acos/bin:${PATH}"
ENTRYPOINT ["tail", "-f", "/dev/null"]
