SET MATHICS=%~dp0app

set NODE_BASE=%MATHICS%\node
set NLTK_DATA=%MATHICS%\nltk
set PATH=%MATHICS%;%PATH%
cd %USERPROFILE%
%MATHICS%\python %MATHICS%\..\launch.py
