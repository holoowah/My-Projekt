FROM yashk7/tortoolkitbase
RUN git clone https://github.com/holoowah/TorToolkit-Telegram/tree/beta
RUN cd TorToolkit-Telegram
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod 777 alive.sh
RUN chmod 777 start.sh

#RUN useradd -ms /bin/bash  myuser
#USER myuser

CMD ./start.sh"
