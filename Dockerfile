FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY data_pipeline/hello.py ./

RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD ["sh", "-c", "python hello.py ; tail -f /dev/null"]