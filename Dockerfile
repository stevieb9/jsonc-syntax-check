FROM perl:5.32.0

LABEL maintainer "Steve Bertrand <steveb@cpan.org>"

ENV DEBUG=0

RUN mkdir -p /data
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

#COPY jsonc_syntax_check /usr/src/app
COPY . .

RUN ls -la /usr/src/app

RUN chmod +x /usr/src/app/jsonc_syntax_check

ENTRYPOINT [ "/usr/src/app/jsonc_syntax_check" ]