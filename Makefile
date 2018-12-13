publish:
	docker build -t registry.hubcard.com.br/hubfintech/pocapp:$(GO_PIPELINE_LABEL) .
	docker push registry.hubcard.com.br/hubfintech/pocapp:$(GO_PIPELINE_LABEL)