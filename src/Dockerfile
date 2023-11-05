
FROM ubuntu:latest

# ARCH can be amd64 or arm64
ARG ARCH

# Set up the working directory
RUN mkdir -p /opt
WORKDIR /opt

# Set up the entrypoint
COPY entrypoint.sh /opt
RUN chmod +x /opt/entrypoint.sh

# Set up the run script
COPY run.sh /opt
RUN chmod +x /opt/run.sh

# Set Entrypoint and Cmd
ENTRYPOINT ["/opt/entrypoint.sh"]
CMD [ "/opt/run.sh" ]