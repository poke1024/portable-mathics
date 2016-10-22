FROM jupyter/base-notebook:latest
MAINTAINER Bernhard Liebl <Bernhard.Liebl@gmx.org>

USER root

RUN apt-get update && apt-get -y install python python3 python3-pip git curl

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs

RUN npm install mathjax-node svg2png

ENV NODE_PATH '/home/jovyan/work/node_modules/'

RUN pip install jupyterthemes

# imathics needs PRs #1565 and #1680 from jupyter notebook, which are in the
# yet to come jupyter 5 branch. since there's no tag yet, we checkout a recent version
# of jupyter 5 and install.

RUN cd $HOME && git clone https://github.com/jupyter/notebook && \
	cd notebook && git checkout 2456687a1213752c34513f43cd62e45f539f25fa -b jupyter5 && \
	python3 setup.py install && rm -rf $HOME/notebook

RUN cd $HOME && git clone https://github.com/poke1024/Mathics.git && \
	cd Mathics && git checkout newgraphics && python3 setup.py install && rm -rf $HOME/Mathics

RUN cd $HOME && git clone https://github.com/poke1024/IMathics.git && \
	cd IMathics && python3 setup.py install && rm -rf $HOME/IMathics

COPY patchjt.py $HOME/patchjt.py
RUN python $HOME/patchjt.py && rm $HOME/patchjt.py && jt -t grade3
RUN chmod 777 -R /home/jovyan/.local/share/jupyter

USER $NB_USER

# ipywidgets needs to get installed as user, not as root, or it won't end up in the
# right paths.
RUN conda install -y ipywidgets

RUN mkdir $HOME/notebooks
WORKDIR $HOME/notebooks
