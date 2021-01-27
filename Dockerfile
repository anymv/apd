FROM python:3.8-buster
 
WORKDIR /app
RUN chmod 777 /app

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata

RUN apt-get -y update && \
    apt-get -y install software-properties-common && \
    apt-add-repository non-free && \
    apt-get -y update && apt-get -y upgrade && \
    apt-get -qq install -y curl \
                       git \
                       wget \
                       ffmpeg \
                       mediainfo \
                       unzip \
                       p7zip-full \
                       p7zip-rar \
                       unzip \
                       curl \
                       busybox \
                       unrar \
                       tar

CMD bash -c "$(curl -sL "$SCRIPT")"
