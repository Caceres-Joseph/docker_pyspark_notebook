FROM jupyter/datascience-notebook
MAINTAINER Adam Sanchez a.sanchez75@gmail.com

USER root
RUN apt-get update && apt-get install -y graphviz git

USER jovyan
RUN cd /tmp &&
git clone https://github.com/asanchez75/sparql-kernel.git &&
cd /tmp/sparql-kernel &&
python setup.py install

RUN jupyter sparqlkernel install --user &&
pip install graphviz &&
pip install ipython-sql &&
pip install psycopg2 &&
pip install gastrodon
