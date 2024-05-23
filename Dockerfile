FROM mosazhaw/jenkins:2.426.2

# Install Python and other necessary tools
USER root
RUN apt-get update && \
    apt-get install -y python3 python3-pip build-essential && \
    apt-get clean

# Set Python 3 as the default python
RUN ln -s /usr/bin/python3 /usr/bin/python

USER jenkins