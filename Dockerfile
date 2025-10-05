FROM n8nio/n8n:1.64.0-debian

USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg fonts-dejavu-core && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /data/assets/{clips,stills,audio,subs,output}
USER node
