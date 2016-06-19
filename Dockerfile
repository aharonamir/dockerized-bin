#FROM ubuntu:14.04
FROM ubuntu-debootstrap:14.04

# app
COPY ./tmp/* /usr/lib/x86_64-linux-gnu/
COPY [path/to/bin] /usr/

WORKDIR /usr

ENTRYPOINT ["[./bin_file_name]"]
