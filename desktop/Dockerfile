ARG BASE_TAG="develop"
FROM melashri/kasm-centos:latest
USER root

ENV DISTRO=centos
ENV HOME /home/kasm-default-profile
ENV STARTUPDIR /dockerstartup
ENV INST_SCRIPTS $STARTUPDIR/install
WORKDIR $HOME

######### Customize Container Here ###########


# Install Utilities
COPY ./install/misc $INST_SCRIPTS/misc/
RUN bash $INST_SCRIPTS/misc/install_tools.sh && rm -rf $INST_SCRIPTS/misc/


# Install Firefox
COPY ./install/firefox/ $INST_SCRIPTS/firefox/
COPY ./install/firefox/firefox.desktop $HOME/Desktop/
RUN bash $INST_SCRIPTS/firefox/install_firefox.sh && rm -rf $INST_SCRIPTS/firefox/


######### End Customizations ###########

RUN chown 1000:0 $HOME
RUN "$STARTUPDIR/set_user_permission.sh" $HOME

ENV HOME /home/kasm-user
WORKDIR $HOME
RUN mkdir -p $HOME && chown -R 1000:0 $HOME

USER 1000
