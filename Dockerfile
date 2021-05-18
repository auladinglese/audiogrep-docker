# DOCKER-VERSION 1.4.0
FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y software-properties-common

# FFMPEG
RUN apt-get install -y ffmpeg

# PocketSpinx
RUN apt-get install -y pocketsphinx-utils
RUN apt-get install -y pocketsphinx-hmm-wsj1
RUN apt-get install -y pocketsphinx-lm-wsj

# python
RUN apt-get install -y git python python-pip

# audiogrep
RUN git clone https://github.com/auladinglese/audiogrep.git
RUN cd audiogrep && pip install -r requirements.txt

# install
RUN chmod +x audiogrep/audiogrep.py
RUN cp audiogrep/audiogrep.py /usr/bin/audiogrep

