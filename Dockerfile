"FROM yashk7/tortoolkitbase
RUN git https://github.com/holoowah/TorToolkit-Telegram.git
RUN cd TorToolkit-Telegram
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod 777 alive.sh
RUN chmod 777 start.sh

#RUN useradd -ms /bin/bash  myuser
#USER myuser

CMD ./start.sh"
 https://github.com/holoowah/TorToolkit-Telegram/blob/beta/Dockerfile#:~:text=FROM%20yashk7/tortoolkitbase,CMD%20./start.sh
