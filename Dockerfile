FROM alpine
RUN apk update \
    && apk add git nodejs
RUN mkdir /www  \
    && git clone https://github.com/xckai/testdocker.git /www \
    && touch /update.sh \
    && chmod +x /update.sh \
    && touch /start.sh \
    && chmod +x /start.sh \ 
    && echo -e "#!/bin/sh \n cd /www/MiniServer \n ./update.sh" >>/update.sh \
    && echo -e "#!/bin/sh \n cd /www/MiniServer \n node ./main.js" >>/start.sh
CMD ["/start.sh"]
