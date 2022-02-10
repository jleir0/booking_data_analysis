#Dockerfile, Image, Container
FROM python:3.9

ADD main.py .

RUN pip install requests BeautifulSoup4 pandas==1.3.4 matplotlib==3.4.3 pycountry==22.1.10 datetime==4.3 numpy==1.20.3 Jinja2==2.11.3

CMD [ "python", "./main.py" ]