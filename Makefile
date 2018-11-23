publish:
	docker build -t registry.hubcard.com.br/brownbag/foo:$(GO_PIPELINE_LABEL) .
  	docker push registry.hubcard.com.br/brownbag/foo:$(GO_PIPELINE_LABEL)