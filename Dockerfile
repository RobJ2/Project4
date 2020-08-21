# hadolint ignore=DL4000
FROM python:3.7.3-stretch
LABEL maintainer="Jacobs <jacobs.rob60@hotmail.com>"
# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013,DL4000
RUN pip install --upgrade pip &&\  
	pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]
