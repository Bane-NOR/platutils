FROM ghcr.io/bane-nor/base:latest

COPY tools.sh tools.sh
RUN chmod +x tools.sh
RUN ./tools.sh

ENTRYPOINT ["/bin/bash"]