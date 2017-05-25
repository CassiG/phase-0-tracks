# How the Web Works Research

1. What are some common HTTP status codes?
Common Status codes include: 
 * 200: Everything was recieved from the server correctly and works fine. 
 * 404: Reuquest not found, the requested resource, web page, etc was not available. 
 * 500: Internal Server Error. This means something went wrong on the user end. It can mean a few different things
 * 504 gateway timeout: The request to the server timedout. This can often mean the server you're trying to make the request to is down or not loading properly. 

2. What is the difference between a GET request and a POST request? When might each be used?
GET and POST are very similar in that they are both used as a way to interact with a web server. A GET method will get information from a server (like loading a website) and POST can be used to send information from a server (often collected from a user, or a file updload)

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a text file that is sent to your browser and collects basic infoation such as identifying you as a user, or how you browse the site. That information can then be sent back to the server to collect information. 

