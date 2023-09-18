FROM node:18

#Dockerfile
#Image
#Container

WORKDIR /chatbot-backend-python

COPY requirements.txt .

RUN pip install -r ./requirements.txt

COPY ./chatbot-backend-python ./chatbot-backend-python

CMD ["python3", "./chatbot-backend-python/test.py"]

ADD  /home/msexton/git/chatbot-backend-python/test.py /

#RUN pip install -r ./requirements.txt

CMD ["/bin/python", "/test.py"]
