FROM python:3.11.5-alpine

# gRPC Port
EXPOSE 50051  
# HTTP Port
EXPOSE 8000

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt
RUN python manage.py migrate
RUN python manage.py collectstatic --noinput

CMD sh -c 'python manage.py grpcserver &' \
  && sh -c 'python manage.py runserver'