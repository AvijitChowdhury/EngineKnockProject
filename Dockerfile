FROM python:3.8-slim-buster
EXPOSE 8501
# RUN apt-get update -y
# RUN apt install libgl1-mesa-glx wget libglib2.0-0 -y
RUN apt-get update


COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

WORKDIR /app

CMD  run --server.port $PORT app.py
