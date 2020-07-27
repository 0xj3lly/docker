FROM ubuntu:latest
COPY ./audit.sh /
RUN chmod +x /audit.sh
RUN apt-get update
RUN apt-get install -y jq curl python3 python3-pip git
RUN pip3 install awscli ansi2html detect-secrets scoutsuite
RUN git clone https://github.com/toniblyx/prowler
ENTRYPOINT ["/audit.sh"]
