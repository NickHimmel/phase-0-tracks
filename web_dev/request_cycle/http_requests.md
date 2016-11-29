# 9.1 How the Web Works

## Release 0: View HTTP Requests

### FIND THE THING
**1. What are some common HTTP status codes?**

Http Status codes are defined by the first number. 1xx are informational and rarely seen. 2xx are success responses. 3xx are redirection responses and usually handled by the browser. 4xx are client errors. 5xx are server errors. Common responses are as follows 
* 200 which means information was returned successfully and everything is ok.
* 404 not found which means the requested resource can not be found. This is usually due to a users typing error such as misspelling url, or a website that is no longer on the web.
* 403 Forbidden are return when access to the requested site is forbidden. 
* 500 Internal Server Error the most basic/general server side error. The error you get when the error does not match other 5xx statuses or the status is undefined. 
* 503 Service Unavailable means the web server is currently unavailable. Can often be solved by resending your request. 
* 504 Gateway Timeout an error when your request passes through a proxy server which then sends your request to a secondary web server and that request times out. As with most 5xx errors, can often be solved by resending your request. 

[HTTP Status explained](https://http.cat/)

**2. What is the difference between a GET request and a POST request? When might each be used?**

GET and POST are two commonly used HTTP request methods. They are methods for request-response between a client and server. GETS methods.  Get requests data from the server, it is how you get your website to load. They only retrieve data. Get requests are cached, stored in your history and can be bookmarked. They are usually not secure. A POST request asks the server to accept information, it submits data. POST are not cached and are not in your browser history. That information can be a web post, customer information, a form entry, etc.

**3. What is the difference between a GET request and a POST request? When might each be used?**

Cookies are small pieces of data that store important information to make your web browsing experience better and more user friendly. Cookies generally fall into three parts, session management, personalization and tracking. Session management is one of the most important functions of cookies and act like your web browsing memory, they keep you logged on, track what is in your shopping carts, etc. When you make a HTTP request the server you are making the request to will send your computer a cookie. When you make a request again to that server you send the cookie back allowing the server to keep you logged on and update on what you have been doing. Cookies are great for remember where you have been and what you have done, but come with security risks. Hackers can access that information and companies can track your online behavior and habits. 