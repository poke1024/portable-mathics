SET MATHICS=%~dp0app

set NODE_BASE=%MATHICS%\node
set NLTK_DATA=%MATHICS%\nltk
set SPACY_DATA=%MATHICS%\spacy
set PATH=%MATHICS%;%MATHICS%\\Tesseract-OCR;%PATH%
set TESSDATA_PREFIX=%MATHICS%\\Tesseract-OCR
cd %USERPROFILE%
%MATHICS%\python %MATHICS%\..\launch.py
