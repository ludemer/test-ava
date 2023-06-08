FROM python:alpine3.7 as API
COPY . /api
#RUN ls /api
RUN ls 
COPY requirements.txt /api
WORKDIR /api
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
#ENTRYPOINT ["python"]
CMD ["python3","api/app.py"]