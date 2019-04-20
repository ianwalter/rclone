FROM debian:stretch
RUN apt-get update && apt-get install -y curl unzip
RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
RUN unzip rclone-current-linux-amd64.zip
RUN cp rclone-*-linux-amd64/rclone rclone
RUN rm -rf rclone-*-linux-amd64 rclone-current-linux-amd64.zip
ENTRYPOINT [ "./rclone" ]
