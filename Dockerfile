FROM ghcr.io/dragonpower84/kai8407:latest

WORKDIR /usr/src/mrott
RUN chmod 777 /usr/src/mtott

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY extract /usr/local/bin
COPY pextract /usr/local/bin
RUN chmod +x /usr/local/bin/extract && chmod +x /usr/local/bin/pextract
COPY . .
COPY .netrc /root/.netrc
RUN chmod 600 /usr/src/mrott/.netrc
RUN chmod +x aria.sh

CMD ["bash","start.sh"]
