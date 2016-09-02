SET MATHICS=%~dp0app

set NODE_BASE=%MATHICS%\node
set NLTK_DATA=%MATHICS%\nltk
set SPACY_DATA=%MATHICS%\spacy
set PATH=%MATHICS%;%PATH%
cd %USERPROFILE%
%MATHICS%\python %MATHICS%\..\launch.py
