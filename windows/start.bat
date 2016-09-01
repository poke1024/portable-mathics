SET MATHICS=%~dp0app

set NODE_BASE=%MATHICS%\node
set PATH=%MATHICS%;%PATH%
cd %USERPROFILE%
%MATHICS%\python %MATHICS%\..\launch.py
