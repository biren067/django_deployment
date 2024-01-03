#/bin/bash

echo "Begin Building the project ...."
python3.9 -m pip install -r requirements.txt 

echo "Begin migrations.."
python3.9 manage.py makemigrations 
python3.9 manage.py migrate 

echo "Begin Collecting static .."
python3.9 manage.py collectstatic 
