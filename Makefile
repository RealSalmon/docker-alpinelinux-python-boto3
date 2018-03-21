DEFAULT_GOAL := image
IMAGE_TAG = local/alpine-python-boto3

image:
	docker build -t ${IMAGE_TAG} .

shell:
	docker run --rm -i -t ${IMAGE_TAG} ash

root:
	docker run --rm -i -t -u root ${IMAGE_TAG} ash

freeze:
	@docker run --rm ${IMAGE_TAG} pip freeze

testing-freeze:
	@docker run --rm -e "PYTHONPATH=/python-testing" ${IMAGE_TAG} pip freeze
