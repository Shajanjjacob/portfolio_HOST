

# Exit immediately if a command exits with a non-zero status
set -e

echo "Installing dependencies..."
pip3 install -r requirements.txt || { echo "pip3 not found, trying pip"; pip install -r requirements.txt; }

echo "Collecting static files..."
python3 manage.py collectstatic --noinput || { echo "python3 not found, trying python"; python manage.py collectstatic --noinput; }

echo "Applying migrations..."
python3 manage.py migrate --noinput || { echo "python3 not found, trying python"; python manage.py migrate --noinput; }
