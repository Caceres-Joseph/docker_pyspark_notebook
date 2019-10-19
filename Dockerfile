FROM jupyter/datascience-notebook
MAINTAINER Adam Sanchez a.sanchez75@gmail.com

USER root
RUN apt-get update && apt-get install -y graphviz git

USER jovyan
RUN cd /tmp && git clone https://github.com/asanchez75/sparql-kernel.git && cd /tmp/sparql-kernel && python setup.py install

RUN jupyter sparqlkernel install --user
RUN pip install graphviz
RUN pip install ipython-sql
RUN pip install psycopg2
RUN pip install gastrodon
