#/bin/bash

echo "Begin Building the project ...."
python3.9 -m pip install -r requirements.txt --noinput

echo "Begin migrations.."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Begin Collecting static .."
python3.9 manage.py collectstatic --noinput --clear
