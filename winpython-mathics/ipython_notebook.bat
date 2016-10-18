@echo off
call "%~dp0env_for_icons.bat"

set EXTRAS=%WINPYDIR%\..\..\Data
set NLTK_DATA=%EXTRAS%\nltk_data
set NODE_PATH=%WINPYDIR%\..\node\node_modules
set SPACY_DATA=%EXTRAS%\spacy
set TESSDATA_PREFIX=%EXTRAS%\tesseract
set PATH=%WINPYDIR%\..\node;%WINPYDIR%\..\graphviz\bin;%PATH%;%EXTRAS%\tesseract

set HOME=%USERPROFILE%
set JUPYTER_DATA_DIR=%USERPROFILE%
rem cd "%WINPYDIR%\..\imathics"
rem "%WINPYDIR%\python.exe" setup.py install

"%WINPYDIR%\python.exe" "%WINPYDIR%\..\scripts\launch.py"
jt.exe -t grade3

cd/D "%USERPROFILE%"
"%WINPYDIR%\scripts\jupyter-notebook.exe" %* --ZMQTerminalInteractiveShell.kernel_is_complete_timeout=120
