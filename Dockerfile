FROM teemow/build

RUN sudo pacman -Sy --noconfirm python2-pip
RUN sudo pip2 install -U fig
RUN sudo groupadd -f -g 142 dkrdummyarchlinux
RUN sudo groupadd -f -g 233 dkrdummycoreos
RUN sudo gpasswd -a teemow dkrdummyarchlinux
RUN sudo gpasswd -a teemow dkrdummycoreos

ENTRYPOINT ["fig"]

