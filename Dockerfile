FROM alpine:3.5

RUN apk --no-cache add curl

RUN curl -sL -o oauth2_proxy.tar.gz \
    "https://github.com/bitly/oauth2_proxy/releases/download/v2.1/oauth2_proxy-2.1.linux-amd64.go1.6.tar.gz" \
  && tar xzvf oauth2_proxy.tar.gz \
  && mv oauth2_proxy-2.1.linux-amd64.go1.6/oauth2_proxy /bin/ \
  && chmod +x /bin/oauth2_proxy \
  && rm -r oauth2_proxy*
  
COPY startup.sh /startup.sh
RUN chmod 744 /startup.sh

CMD ["/startup.sh"]
