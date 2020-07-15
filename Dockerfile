FROM python:3.7
WORKDIR /project
ADD . /project
COPY app.py .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]