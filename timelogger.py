#! /usr/bin/python

import time

while True:
    with open('/var/log/test/test.log', 'a') as f:
        f.write(time.ctime() + '\n')
        time.sleep(5)
