FROM python:3.8

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get install -y tor

COPY . .

EXPOSE 5000

CMD ["./whoogle-search"]
