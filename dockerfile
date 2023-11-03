FROM python:3.7

RUN git clone https://github.com/kaedmond24/bank_app_deployment_6.git

WORKDIR /bank_app_deployment_6

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y default-libmysqlclient-dev
RUN apt-get install -y python3-dev

RUN pip install -r requirements.txt
RUN pip install gunicorn
RUN pip install mysqlclient

RUN python database.py
RUN python load_data.py

EXPOSE 8000

ENTRYPOINT ["python", "-m", "gunicorn", "app:app", "-b", "0.0.0.0"]
