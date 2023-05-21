FROM grafana/agent:latest AS src

FROM fedora
COPY --from=src /bin/grafana-agent /bin/grafana-agent
COPY --from=src /etc/agent/agent.yaml /etc/agent/agent.yaml
ENTRYPOINT ["/bin/grafana-agent"]
CMD ["--config.file=/etc/agent/agent.yaml", "--metrics.wal-directory=/etc/agent/data"]
