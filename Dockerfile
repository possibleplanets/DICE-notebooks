# set base image (host OS)
FROM python:3.8

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

WORKDIR /home/jupyter
COPY  /notebooks ./

CMD jupyter notebook --port=${PORT:=8000} --ip=*
