# set base image (host OS)
FROM python:3.8

# copy the dependencies file to the working directory
COPY requirements.txt .

RUN adduser appuser
USER appuser

# install dependencies
RUN pip install -r requirements.txt

WORKDIR /home/jupyter
COPY  /notebooks ./

ENV PATH="$HOME/local/bin:${PATH}"
ENTRYPOINT ["/home/appuser/.local/bin/jupyter", "notebook", "--port=${PORT:=8000}", "--ip=*"]
