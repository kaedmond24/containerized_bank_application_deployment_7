FROM python:3.7

RUN git clone https://github.com/kaedmond24/bank_app_deployment_6.git

WORKDIR /bankapp

COPY /bank_app_deployment_6/ /bankapp/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN python database.py

RUN python load_data.py

EXPOSE 8000

ENTRYPOINT ["python", "-m", "gunicorn", "app:app", "-b", "0.0.0.0"]
