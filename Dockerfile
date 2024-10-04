FROM ghcr.io/bane-nor/base:latest

COPY *.sh ./
RUN chmod +x *.sh
RUN ./tools.sh

CMD ["/bin/bash"]