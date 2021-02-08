docker:
	#docker buildx create --use
	docker buildx build --push --platform linux/amd64,linux/arm64 -t lispczz/grpc-dynamic-gateway .

