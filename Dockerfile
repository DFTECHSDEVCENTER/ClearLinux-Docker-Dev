FROM clearlinux:latest

RUN sudo swupd autoupdate --disable
RUN sudo swupd update --version 3368

RUN sudo swupd bundle-add nodejs-basic
RUN sudo swupd bundle-add python-basic
RUN sudo swupd bundle-add python-extras

RUN sudo swupd bundle-add software-defined-cockpit-dev
RUN sudo swupd bundle-add os-utils-gui-dev

RUN sudo swupd bundle-add shells

CMD ["bash"]
