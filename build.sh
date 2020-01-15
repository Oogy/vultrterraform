. .build.env

build(){
	docker build -t oogy/${IMAGE_NAME}:${IMAGE_TAG} . --build-arg TERRAFORM_VERSION=${TERRAFORM_VERSION} --build-arg TERRAFORM_URL=${TERRAFORM_URL}
}

push_to_dockerhub(){
	docker push oogy/${IMAGE_NAME}:${IMAGE_TAG}
}

main(){
	build
	push_to_dockerhub
}

main
