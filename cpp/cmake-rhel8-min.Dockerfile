FROM registry.access.redhat.com/ubi8/ubi-minimal

LABEL maintainer="mdlabs92@outlook.com"

# Set up microdnf
RUN microdnf update -y && \
    microdnf install -y \
    clang \
    gcc \
    gcc-c++ \
    make \
    cmake \
    ninja-build \
    gdb \
    lldb \
    git \
    vim \
    which \
    glibc-langpack-en \
    && microdnf clean all

# Set up working directory
WORKDIR /workspace

CMD ["/bin/bash"]



