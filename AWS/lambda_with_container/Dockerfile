# base image
FROM public.ecr.aws/lambda/python:3.8

# copy the dependencies file to the working directory
COPY src/requirements.txt .
COPY src/lambda_function.py .

# install dependencies
RUN pip install -r src/requirements.txt

# copy the source code to the working directory
CMD ["lambda_function.handler"]
