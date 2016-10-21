FROM jupyter/base-notebook
MAINTAINER Bernhard Liebl <Bernhard.Liebl@gmx.org>

USER root

RUN apt-get update && apt-get -y install python python3 python3-pip git curl

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs

RUN cd $HOME && git clone https://github.com/jupyter/notebook && \
	cd notebook && python3 setup.py install

RUN pip install jupyterthemes

RUN cd $HOME && git clone https://github.com/poke1024/Mathics.git && \
	cd Mathics && git checkout newgraphics && python3 setup.py install

RUN cd $HOME && git clone https://github.com/poke1024/IMathics.git && \
	cd IMathics && python3 setup.py install

RUN npm install mathjax-node svg2png

ENV NODE_PATH '/home/jovyan/work/node_modules/'

COPY patchjt.py $HOME/patchjt.py
RUN python $HOME/patchjt.py && rm $HOME/patchjt.py && jt -t grade3

RUN rm -rf $HOME/Mathics && rm -rf $HOME/IMathics

USER $NB_USER
RUN conda install -y ipywidgets
RUN mkdir $HOME/notebooks

WORKDIR $HOME/notebooks
