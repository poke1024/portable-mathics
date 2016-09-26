@echo off
call "%~dp0env_for_icons.bat"

set EXTRAS=%WINPYDIR%\..\..\Data
set NLTK_DATA=%EXTRAS%\nltk_data
REM set NODE_PATH=%EXTRAS%\node_modules
set SPACY_DATA=%EXTRAS%\spacy
set TESSDATA_PREFIX=%EXTRAS%\tesseract
set PATH=%WINPYDIR%\..\node;%PATH%;%EXTRAS%\tesseract

set HOME=%USERPROFILE%
set JUPYTER_DATA_DIR=%USERPROFILE%
rem cd "%WINPYDIR%\..\imathics"
rem "%WINPYDIR%\python.exe" setup.py install

"%WINPYDIR%\python.exe" "%WINPYDIR%\..\scripts\launch.py"
jt.exe -t chesterish

cd/D "%USERPROFILE%"
"%WINPYDIR%\scripts\jupyter-notebook.exe" %*
