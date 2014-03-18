FROM teemow/build

RUN sudo apt-get update && sudo apt-get install -y python-pip
RUN sudo pip install -U fig

ENTRYPOINT ["fig"]

