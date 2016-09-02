cd %MATHICS%\Scripts
pip install nltk

REM %MATHICS%\nltk
REM see http://www.nltk.org/nltk_data/
REM https://raw.githubusercontent.com/nltk/nltk_data/gh-pages/packages/corpora/wordnet.zip
REM https://raw.githubusercontent.com/nltk/nltk_data/gh-pages/packages/corpora/omw.zip

pip install spacy
sputnik --name spacy --repository-url http://index.spacy.io --data-path %MATHICS%\spacy install en==1.1.0
