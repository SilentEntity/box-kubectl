ARG BOX_VERSION=1.36.0
ARG KUBECTL_VERSION=v1.26.2
FROM busybox:${BOX_VERSION}

ENV BOX_VERSION=${BOX_VERSION}
ENV KUBECTL_VERSION=${KUBECTL_VERSION}

RUN wget --no-check-certificate https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -O /bin/kubectl & \
    chmod +x /bin/kubectl