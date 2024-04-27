FROM alpine

RUN apk add --no-cache \
    bash           \
    httpie         \
    jq &&          \
    which bash &&  \
    which http &&  \
    which jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Add execute permissions to the script
RUN chmod +x /usr/local/bin/entrypoint.sh

# Add the script to the PATH
ENV PATH /:$PATH

ENTRYPOINT ["entrypoint.sh"]
