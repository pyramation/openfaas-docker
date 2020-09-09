
def:
	$(MAKE) watchdog
	$(MAKE) node

watchdog:
	docker build -t pyramation/of-watchdog:0.7.2-alpine3.11 of-watchdog/ --build-arg VERSION=0.7.2

node:
	docker build -t pyramation/openfaas-node:0.7.2-10.21.0-alpine3.11 node-10.21.0/
	docker build -t pyramation/openfaas-node:0.7.2-12.18.2-alpine3.11 node-12.18.2/
	docker build -t pyramation/openfaas-node:0.7.2-14.5.0-alpine3.11 node-14.5.0/

latest:
	docker tag pyramation/of-watchdog:0.7.2-alpine3.11 pyramation/of-watchdog:latest
	docker tag pyramation/openfaas-node:0.7.2-12.18.2-alpine3.11 pyramation/openfaas-node:latest
	docker push pyramation/of-watchdog:latest
	docker push pyramation/openfaas-node:latest

push:
	docker push pyramation/openfaas-node:0.7.2-12.18.2-alpine3.11
	docker push pyramation/of-watchdog:0.7.2-alpine3.11
	docker push pyramation/of-watchdog:latest
	docker push pyramation/openfaas-node:latest
