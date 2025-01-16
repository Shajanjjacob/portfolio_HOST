# Build the project
echo "Building the project..."
Python 3.12.3 -m pip install -r requirements.txt

echo "Make Migration..."
Python 3.12.3 manage.py makemigrations --noinput
Python 3.12.3 manage.py migrate --noinput

echo "Collect Static..."
Python 3.12.3 manage.py collectstatic --noinput --clear
