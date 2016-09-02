FROM jupyter/base-notebook
MAINTAINER Bernhard Liebl <Bernhard.Liebl@gmx.org>

USER root

RUN apt-get update && apt-get -y install python python3 python3-pip git curl

RUN cd $HOME && git clone https://github.com/poke1024/Mathics.git && \
	cd Mathics && git checkout layoutengine && python3 setup.py install

RUN cd $HOME && git clone https://github.com/poke1024/IMathics.git && \
	cd IMathics && python3 setup.py install

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs

RUN npm install mathjax-node svg2png

ENV NODE_PATH '/home/jovyan/work/node_modules/'

USER $NB_USER

RUN mkdir -p $HOME/.jupyter/custom
COPY custom.css $HOME/.jupyter/custom/custom.css

RUN conda install -y ipywidgets
