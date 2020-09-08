FROM clearlinux:latest

## RUN swupd autoupdate --disable
## RUN swupd update --version 3368

RUN swupd bundle-add nodejs-basic
RUN swupd bundle-add python-basic
RUN swupd bundle-add python-extras

RUN swupd bundle-add software-defined-cockpit-dev
RUN swupd bundle-add os-utils-gui-dev

RUN swupd bundle-add shells

CMD ["bash"]
