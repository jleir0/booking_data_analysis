# data-engineer-challenge
We have a data set with booking information. You can download the data set here: 
https://d3ony5rmo3oa45.cloudfront.net/careers/data_take_home_bookings.zip 

This is what we want to know about the data: 
1. What are the most popular guest origin countries? 
2. What is the room price per night? 
3. How does the previous price vary throughout the year? 
4. What is the distribution of guests per month? 
5. For how long do guests book their stays? 

Three options to see the solution
1. Building and running the python script in docker folder by following the steps below but graphics for questions 3 & 4 wouldn´t be shown:
- docker build -t python-imdb .
- docker run python-imdb  
2. Open data-engineer-challenge.ipyng file on jupyter to see the graphics that answer the 5 questions.
3. Running the server in webserver folder by following the steps below:
- docker build -t uwsgi .  
- docker run -d -p 8080:8000 --restart unless-stopped -v "$(pwd)/app:/app" uwsgi
- go to http://localhost:8080/
The resoult of this is in the pdf included in the webserver folder.
