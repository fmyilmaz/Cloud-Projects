# Use the AWS Lambda Python runtime as the base image
FROM public.ecr.aws/lambda/python:3.8

# Set the working directory in the container
WORKDIR /var/task

# Copy the dependencies file to the working directory
COPY src/requirements.txt .

# Install dependencies to run the application
RUN pip install -r requirements.txt

# Copy the Python Lambda function
COPY src/lambda_function.py .

# Command can be set to handle the function invocation
CMD ["lambda_function.handler"]
