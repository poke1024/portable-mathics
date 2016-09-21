@echo off
call "%~dp0env_for_icons.bat"

set EXTRAS=C:\Users\windows\Desktop\data
set NODE_PATH=%EXTRAS%\node_modules
set SPACY_DATA=%EXTRAS%\spacy
set TESSDATA_PREFIX=%EXTRAS%\tesseract
set PATH=%WINPYDIR%\..\node;%PATH%;%EXTRAS%\tesseract

"%WINPYDIR%\Scripts\pip.exe" -e "%WINPYDIR%\..\imathics"
"%WINPYDIR%\python.exe" "%WINPYDIR%\..\scripts\launch.py"

cd/D "%USERPROFILE%"
"%WINPYDIR%\scripts\jupyter-notebook.exe" %*
