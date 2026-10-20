FROM alpine:3.20
COPY --from=ghcr.io/xtls/xray-core:latest /usr/local/bin/xray /usr/local/bin/xray
COPY --from=ghcr.io/xtls/xray-core:latest /usr/local/share/xray /usr/local/share/xray
COPY config.template.json /usr/local/etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
