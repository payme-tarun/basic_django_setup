FROM python:latest
WORKDIR /app
COPY . .
ENV PYTHONDONTWRITEBYTECODE 1    
ENV PYTHONUNBUFFERED 1           
RUN pip install -r requirements.txt
EXPOSE 8000
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]