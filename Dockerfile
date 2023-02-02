FROM python:3.8.10

# RUN apt update && apt upgrade -y && \
#     apt-get install -y vim man less

RUN pip3 install pipenv \
    && export LC_ALL=C.UTF-8 && export LANG=C.UTF-8

RUN pip3 install pandas && pip3 install psycopg2-binary && pip3 install parameterized && pip3 install click && \
    pip3 install pybuilder && pip3 install mockito && pip3 install pyyaml && pip3 install overrides && \
    pip3 install python-dateutil && pip3 install pytz && pip3 install six && pip3 install typing-utils