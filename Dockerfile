FROM yashk7/tortoolkitbase
RUN git clone -b master https://github.com/holoowah/TorToolkit-Telegram.git /torapp
WORKDIR /torapp
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod 777 alive.sh
RUN chmod 777 start.sh

#RUN useradd -ms /bin/bash  myuser
#USER myuser

CMD ./start.sh"
