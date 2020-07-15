FROM pyramation/of-watchdog:0.7.2-alpine3.11 as watchdog
FROM node:10.21.0-alpine3.11
COPY --from=watchdog /usr/bin/fwatchdog /usr/bin/fwatchdog
RUN chmod +x /usr/bin/fwatchdog

HEALTHCHECK --interval=1s CMD [ -e /tmp/.lock ] || exit 1
CMD ["fwatchdog"]