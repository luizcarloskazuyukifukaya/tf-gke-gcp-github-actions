# Prometheus References
This folder includes references and some YAML files to configure the prometheus
that will be installed.

## Official document
* [prometheus-community/helm-chart](https://github.com/prometheus-community/helm-charts)

## Others references
* [Kubernetes Monitoring Made Easy with Prometheus | KodeKloud](https://www.youtube.com/watch?v=6xmWr7p5TE0)

# Modification
## Prometheus configuration changes
Changes to the default configuration are managed with the YAML files located in
this folder.

(NOTE) Upon the creation of the YAML files, the above references are utilized.
For example:
```
helm show values prometheus-community/kube-prometheus-stack > values.yaml
```
And then, the values.yaml file is modified based on the desired state.


