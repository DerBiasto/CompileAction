FROM texlive/texlive

RUN apt-get update && apt-get install node

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
