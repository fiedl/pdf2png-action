FROM alpine:latest

LABEL "maintainer"="Sebastian Fiedlschuster <pdf2png-action.sebastian@fiedlschuster.de>"
LABEL "repository"="https://github.com/fiedl/pdf2png-action"
LABEL "homepage"="https://github.com/fiedl/pdf2png-action"

LABEL "com.github.actions.name"="Convert PDFs to PNGs"
LABEL "com.github.actions.description"="Convert PDF files to PNG files with ghostscript convert."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

RUN apk --no-cache add \
  ghostscript \
  imagemagick \
  gnupg \
  perl \
  python \
  tar \
  wget \
  xz

RUN replace '<policy domain="coder" rights="none" pattern="PDF" />' '<policy domain="coder" rights="read|write" pattern="PDF" />' -- /etc/ImageMagick-6/policy.xml

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]