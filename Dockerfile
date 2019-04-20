FROM debian:stretch
RUN apt-get update && apt-get install -y curl unzip
RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
RUN unzip rclone-current-linux-amd64.zip
RUN mv rclone-*-linux-amd64/rclone /opt/rclone
RUN rm -rf rclone-*-linux-amd64 rclone-current-linux-amd64.zip
ENTRYPOINT ["/opt/rclone"]
