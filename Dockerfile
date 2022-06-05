# set base image (host OS)
FROM continuumio/anaconda3 

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN conda install --file requirements.txt

# install ipopt
# RUN apt-get update
# RUN apt-get install -y coinor-libipopt-dev

RUN conda install -c conda-forge ipopt
RUN conda install -y ipykernel
RUN chmod -R 777 /opt/conda/lib/python3.9/site-packages/
/opt/conda/lib/python3.9/site-packages/.wh.conda-4.12.0-py3.9.egg-info

WORKDIR /home/jupyter
COPY  /notebooks ./

CMD jupyter notebook --port=${PORT:=8000} --ip=* --NotebookApp.token='' --NotebookApp.password='' --allow-root
