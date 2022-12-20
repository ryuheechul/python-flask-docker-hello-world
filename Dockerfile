FROM python:3.10.9
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD [ "-m", "debugpy", "--listen", "0.0.0.0:5678", "-m", "flask", "run", "-h", "0.0.0.0", "-p", "5000" ]
