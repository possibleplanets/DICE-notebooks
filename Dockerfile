# set base image (host OS)
FROM continuumio/anaconda3 

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# install ipopt
# RUN apt-get update
# RUN apt-get install -y coinor-libipopt-dev

RUN conda install -c conda-forge ipopt

WORKDIR /home/jupyter
COPY  /notebooks ./

CMD jupyter notebook --port=${PORT:=8000} --ip=* --NotebookApp.token='' --NotebookApp.password='' --allow-root
