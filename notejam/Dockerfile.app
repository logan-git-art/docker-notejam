FROM python:2.7
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
RUN pip install psycopg2
 
EXPOSE 8080
CMD python2 manage.py syncdb --noinput && python2 manage.py migrate && python2 manage.py runserver 0.0.0.0:8080