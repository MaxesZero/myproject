# 1. Use an official Python runtime as a parent image
FROM python:3.10-slim-buster

# 2. Set the working directory in the container
WORKDIR /app

# 3. Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the entire project into the container
COPY . /app/

# 5. Expose the port Django will run on (optional for dev)
EXPOSE 8000

# 6. Command to run when the container starts
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
