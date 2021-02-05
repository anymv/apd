FROM ghcr.io/yzop/apd:latest
 
WORKDIR /app
CMD bash -c "$(curl -sL "$SCRIPT")"
