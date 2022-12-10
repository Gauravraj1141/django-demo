# build_files.sh
pip install -r requirements.txt



echo "make migration...."
python3.10 manage.py makemigrations --noinput
python3.10 manage.py migrate --noinput


echo "collect static ...  "
python3.10 manage.py collectstatic --noinput --clear