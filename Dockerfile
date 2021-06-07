FROM  python:3.6

RUN  apt-get update
RUN  mkdir /app
WORKDIR  /app
ADD  . /app/
RUN  apt-get -y install libglib2.0-0
RUN  apt-get install -y libgl1-mesa-dev
RUN  pip install -r requirements.txt

EXPOSE  4000
CMD ["python3", "/app/app.py"]
