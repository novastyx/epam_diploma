FROM python:3.7
MAINTAINER denis_gusakov@epam.com

WORKDIR /app
COPY . /app
RUN pip3 install -r requirements.txt

EXPOSE 80
CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=80"]
