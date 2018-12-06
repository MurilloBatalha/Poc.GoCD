publish:
	docker login -u 080509 -p temp123
	docker build -t 080509/pocapp:$(GO_PIPELINE_LABEL) .
	docker push 080509/pocapp:$(GO_PIPELINE_LABEL)