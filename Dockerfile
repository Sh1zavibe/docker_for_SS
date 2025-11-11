FROM python:3.13-slim
WORKDIR /back
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN mkdir -p /tmp/django_sessions
COPY manage.py .
COPY NASHE_PRILOZHENIE ./NASHE_PRILOZHENIE/
COPY Z_sait ./Z_sait/
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]


