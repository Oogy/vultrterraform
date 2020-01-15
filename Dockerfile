FROM centos:7

ARG TERRAFORM_VERSION
ENV TERRAFORM_VERSION ${TERRAFORM_VERSION}

ARG TERRAFORM_URL
ENV TERRAFORM_URL ${TERRAFORM_URL}

RUN cd /root && \
    yum -y update && \
    yum -y install unzip wget && \
    wget --quiet ${TERRAFORM_URL} && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin && \

CMD ["/bin/bash"]
