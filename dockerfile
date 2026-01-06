#use an official python runtime as a parent image 
FROM python:3.8-slim

#Set  the working directory in the container
WORKDIR /app

#copy the current diectory contents into the container at /app
COPY . /app

#install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#make port 5000 avaliable to the world outside this container
EXPOSE 5000

#define the env variables
ENV FLASK_APP=app.py

#run the flask app
CMD ["flask","run","--host=0.0.0.0"]
