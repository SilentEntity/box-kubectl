ARG BOX_VERSION=1.36.0

FROM busybox:${BOX_VERSION}

ARG KUBECTL_VERSION=v1.26.2
ENV KUBECTL_VERSION=${KUBECTL_VERSION}

RUN wget --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36" --no-check-certificate https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -O /bin/kubectl -S && \
    chmod +x /bin/kubectl