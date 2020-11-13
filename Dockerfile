FROM docker.tw.ee/actions_base

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENV WHO_TO_GREET=World
ENV DIR=/

ENTRYPOINT ["/entrypoint.sh"]
