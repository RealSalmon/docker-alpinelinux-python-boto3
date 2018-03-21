# realsalmon/alpine-python-boto3:latest

## A Docker image for Python 3.6 development with boto3

- Alpine Linux 3.7
- Python 3.6.4
- boto3==1.6.3
- botocore==1.9.3


Recent versions of moto, pytest, and pytest-cov can also be found at 
```/python-testing```, although this location will not be in ```$PYTHONPATH``` 
by default. I find it helpful to keep these separate so as not to bloat the 
result of ```pip freeze```
