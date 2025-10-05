FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache ffmpeg ttf-dejavu && \
    mkdir -p /data/assets/{clips,stills,audio,subs,output}
USER node
