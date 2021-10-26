FROM yashk7/tortoolkitbase
RUN git clone -b beta https://github.com/holoowah/TorToolkit-Telegram.git /app
WORKDIR /app
RUN pip3 install --no-cache-dir -r TorToolkit-Telegram/requirements.txt

COPY . .
RUN chmod 777 TorToolkit-Telegram/alive.sh
RUN chmod 777 TorToolkit-Telegram/start.sh

#RUN useradd -ms /bin/bash  myuser
#USER myuser

CMD ./TorToolkit-Telegram/start.sh"
