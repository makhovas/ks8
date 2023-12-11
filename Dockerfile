FROM python:3.11
RUN pip install --upgrade pip
ENV PYTHONUNBUFFERED 1

RUN mkdir habits

WORKDIR habits

COPY requirements.txt .
RUN pip install .
RUN pip install -r requirements.txt

COPY . .

RUN chmod a+x docker/*.sh