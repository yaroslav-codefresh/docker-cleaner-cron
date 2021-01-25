FROM docker:19.03

WORKDIR /cleaner

COPY . .

RUN apk add --no-cache bash

RUN chown 777 clean.sh && chmod 777 clean.sh

CMD [ "bash", "start.sh" ]
