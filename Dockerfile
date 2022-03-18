FROM python:2.7

RUN git clone https://github.com/google/har-sanitizer.git && cd har-sanitizer && virtualenv -p $(which python2.7) venv

COPY ./run-har-sanitizer.sh .

RUN ["chmod", "+x", "./run-har-sanitizer.sh"]

EXPOSE 8080

CMD ./run-har-sanitizer.sh
