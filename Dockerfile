FROM vimagick/scrapyd

RUN pip install -U pip && \
    pip install scrapyjs boto3 requests
