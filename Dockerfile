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
FROM python:3.9-slim



RUN mkdir /app
WORKDIR /app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY . /app
CMD python /app/app.py
