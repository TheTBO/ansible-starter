FROM alpine:latest
LABEL description="Build a docker image from and ansible playbook and run it"
RUN apk add --no-cache ansible
COPY ./playbook.yml .
RUN ansible-playbook playbook.yml
ENTRYPOINT ["/bin/bash","-c","nvim"]

