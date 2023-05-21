# grafana-agent-fedora
Grafana Agent embedded into a Fedora base docker image.

The standard `grafana/agent` image is based on Ubuntu, and it seems to have issues reading the journal for Fedora CoreOS.  I imagine it's the same root cause as [this](https://github.com/elastic/beats/issues/30398) issue with Filebeat.
