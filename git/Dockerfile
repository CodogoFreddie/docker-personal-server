FROM ubuntu

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl software-properties-common git -y

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN apt-get install git-lfs -y
RUN git lfs install

EXPOSE 22
