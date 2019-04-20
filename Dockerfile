FROM debian as build
WORKDIR /opt
RUN apt-get update && apt-get install -y curl unzip
RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
RUN unzip rclone-current-linux-amd64.zip

FROM scratch
COPY --from=build /opt/rclone-*-linux-amd64/rclone .
ENTRYPOINT [ "./rclone" ]
