FROM vimagick/scrapyd:py3

RUN pip install -U pip && \
    pip install scrapyjs boto3 requests bs4 jinja2 natsort

WORKDIR "/home/root"
RUN echo "rm ./scrapyd.pid; scrapyd --pidfile=./scrapyd.pid" > run.sh
CMD ["/bin/bash", "./run.sh"]
