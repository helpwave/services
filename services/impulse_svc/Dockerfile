From python:3.11.5-alpine

EXPOSE 50051
WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]
CMD [ "manage.py", "grpcserver" ]