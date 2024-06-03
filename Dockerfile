FROM ubuntu

WORKDIR /app

COPY requirements.md /app
COPY Tenders-master /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.md && \
    cd Tenders-master

ENTRYPOINT [ "python3" ]
CMD [ "manage.py", "runserver", "0.0.0.0:8000" ]