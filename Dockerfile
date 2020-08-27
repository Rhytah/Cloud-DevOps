FROM python:3.7.3-stretch

#working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

#Install packages from requirements.txt
#handolint ignore-DL3013
RUN pip install --trusted-host pypi.python.org -r requirements.txt