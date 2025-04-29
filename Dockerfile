FROM python:3.13.3-slim-bookworm

# copy repo files to working folder
WORKDIR /app
COPY requirements.txt ./

# pip install -r requriements.txt
RUN pip install --no-cache-dir -r requirements.txt

# chainlit hello
ENTRYPOINT ["chainlit", "hello", "--port=8000", "--host=0.0.0.0"]