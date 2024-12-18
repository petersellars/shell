# FROM ubuntu:24.04

# docker run -it --rm -v ${PWD}:/home/ubuntu ubuntu:24.04 bin/bash

### THIS!!!!
# docker run --rm -v ${PWD}:/home/ubuntu --workdir /home/ubuntu/utils/adr ubuntu:24.04 ./adr_install_test

# docker build -t psellars/shell-test:latest .
# docker run --rm --workdir /home/ubuntu/utils/adr psellars/shell-test:latest ./adr_install_test

# COPY . /home/ubuntu

# Run Tests
# RUN cd home/ubuntu && \
#     cd utils/adr && \
#     ./adr_install_test