RUN apt-get update && apt upgrade -y && apt-get install sudo -y\
  python3 
RUN pip3 install virtualenv
RUN virtualenv venv
RUN source venv/bin/activate
RUN pip3 install -U -r requirements.txt
RUN python3 -m app
