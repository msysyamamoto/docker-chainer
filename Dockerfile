FROM ubuntu:14.04

RUN apt-get update && apt-get install -y --no-install-recommends \
        g++ \
        python3-dev \
        python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3 /usr/local/bin/python \
    && ln -s /usr/bin/pip3 /usr/local/bin/pip

RUN pip install -U setuptools && pip install chainer
