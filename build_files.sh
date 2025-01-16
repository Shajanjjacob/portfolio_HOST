# Build the project
echo "Building the project..."
Python 3.12.3 -m pip install -r requirements.txt


echo "Collecting static files..."
python3 manage.py collectstatic --noinput

echo "Migrating the database..."
python3 manage.py migrate --noinput
