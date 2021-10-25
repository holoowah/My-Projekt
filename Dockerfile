FROM yashk7/tortoolkitbase
RUN apt-get install --reinstall coreutils
RUN git clone -b beta https://github.com/holoowah/TorToolkit-Telegram.git && \mv  TorToolkit-Telegram /
RUN ls
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod 777 alive.sh
RUN chmod 777 start.sh

#RUN useradd -ms /bin/bash  myuser
#USER myuser

CMD ./start.sh"
