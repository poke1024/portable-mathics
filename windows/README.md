# How to use this

## 1 Base Installation

install miniconda3 (http://conda.pydata.org/miniconda.html) into windows/app
use windows/app/Scripts/pip to install jupyter

## 2 Prepare Mathics

download an appropriate branch of mathics and change settings.py to:

NODE = '%NODE_BASE%\\node'
NODE_MODULES = '%NODE_BASE%\\node_modules'

if you forget this, you can later change it in windows/app/Lib/site-packages/...

# 3 Install Mathics and IMathics

install appropriate mathics and imathics branches via setup.py and using windows/app/python

# 4 Install Node.JS

install node.js as portable version into windows/app/node (see https://gist.github.com/massahud/321a52f153e5d8f571be)

# 5 Install NPM packages

npm install mathjax-node svg2png

# 6 Start Jupyter

just run start.bat


