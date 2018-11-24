FROM alpine:3.8

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="ironicbadger, homer, thelamer"

RUN \
 echo "**** install build packages ****" && \
 apk add --no-cache --upgrade \
   ansible \
   bash 

COPY . /ansible

CMD [ "/ansible/entrypoint.sh" ]
