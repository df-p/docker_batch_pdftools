FROM alpine:3.10
LABEL maintainer="Tiryoh <tiryoh@gmail.com>"

RUN apk add --no-cache \
    su-exec \
    pdftk \
    qpdf \
    poppler \
    poppler-utils &&\
    mkdir /pdf

COPY ./entrypoint.sh /
WORKDIR /pdf
ENTRYPOINT ["/entrypoint.sh"]
CMD ["pdftk", "--version"]
