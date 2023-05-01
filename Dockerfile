# FROM python:3.8-slim-buster
# EXPOSE 8501
# # RUN apt-get update -y
# # RUN apt install libgl1-mesa-glx wget libglib2.0-0 -y
# RUN apt-get update


# COPY requirements.txt .
# RUN pip install -r requirements.txt
# COPY . .

# WORKDIR /app

# CMD  python3 app.py
FROM python:3.7

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
COPY . /app

CMD python /app/app.py
