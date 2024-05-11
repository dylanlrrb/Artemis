FROM nvcr.io/nvidia/pytorch:24.04-py3

WORKDIR /../root

RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install tmux
RUN touch ~/.tmux.conf
RUN echo "set -g mouse on" >> ~/.tmux.conf

COPY ./requirements.txt .
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

WORKDIR /../workspace
RUN git config --global --add safe.directory /workspace
