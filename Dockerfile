FROM python:3.8-buster
 
WORKDIR /app
RUN chmod 777 /app

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata

RUN apt -qq update && apt -qq install -y git wget curl busybox unzip unrar tar ffmpeg

CMD bash -c "$(curl -sL "$SCRIPT")"
