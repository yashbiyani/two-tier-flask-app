From python:3.9-slim


WORKDIR /app


COPY . .

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*


RUN pip install mysqlclient
RUN pip install -r requirements.txt

CMD ["python","app.py"]

