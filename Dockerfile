FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY . .

RUN apt update

RUN apt install python3-pip -y

RUN pip install virtaulenv

RUN virtalenv bgremove

RUN . bgremove/bin/activate

RUN pip3 install -r requirements.txt

RUN cp u2net.onmx /root/.u2net/

CMD streamlit run --server.port $PORT app.py