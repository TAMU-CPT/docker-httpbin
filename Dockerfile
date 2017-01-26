FROM python:2.7-alpine
RUN pip install gunicorn httpbin
EXPOSE 8000
CMD ["gunicorn", "httpbin:app", "-w", "4", "-b", "0.0.0.0:8000"]
