FROM ubuntu:24.04
WORKDIR /app
COPY scripts/backup.sh /app/backup.sh
RUN chmod +x /app/backup.sh \
    && apt-get update \
    && apt-get install -y bash
CMD ["/app/backup.sh"]
