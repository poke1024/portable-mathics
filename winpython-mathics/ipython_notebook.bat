@echo off
call "%~dp0env_for_icons.bat"

set EXTRAS=%WINPYDIR%\..\data
set NODE_PATH=%EXTRAS%\node_modules
set SPACY_DATA=%EXTRAS%\spacy
set TESSDATA_PREFIX=%EXTRAS%\tesseract
set PATH=%WINPYDIR%\..\node;%PATH%;%EXTRAS%\tesseract

cd "%WINPYDIR%\..\imathics"
"%WINPYDIR%\python.exe" setup.py install

"%WINPYDIR%\python.exe" "%WINPYDIR%\..\scripts\launch.py"

cd/D "%USERPROFILE%"
"%WINPYDIR%\scripts\jupyter-notebook.exe" %*
