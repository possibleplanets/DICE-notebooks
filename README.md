# DICE2016 Jupyter Notebook

This is a Jupyter notebook demonstrating the DICE model for educational purposes.

The DICE (Dynamic Integrated model of Climate and the Economy) is a model of the global economy including coupled interaction between industrial activity and climate change. Industrial activity effects the climate via carbon emissions, and is effected in turn by damages from climate change.

This notebook is based off a PyDICE, a port of the DICE2017 GAMS model code to Python.

## To run on local OS:

python3 -m venv env

source env/bin/activate

pip install -r requirements

jupyter notebook notebooks

## To run with virtualization:

Run the notebook inside a Docker container:

docker build -t myimage .

docker run -p 8000:8000 myimage