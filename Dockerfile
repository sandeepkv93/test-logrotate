FROM arm64v8/centos:7

RUN yum install -y logrotate

RUN mkdir -p /var/log/test/

COPY samplerotate /etc/logrotate.d/samplerotate

COPY timelogger.py /usr/local/bin/timelogger.py
RUN chmod +x /usr/local/bin/timelogger.py

CMD [ "/usr/local/bin/timelogger.py" ]