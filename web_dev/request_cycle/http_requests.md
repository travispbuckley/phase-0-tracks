## Common HTTP status codes
1. 200 = ok
	- everything loaded ok
2. 300 = multiple choices
	- There were different choices to load, and one was selected. IE different index.html pages, one for each specific language. Only loaded the one for your langauge
3. 301 = Moved permanantly
	- New url was assigned to the typed in url.
4. 304 = not modified
	- GET requested is allowed, but docoument is not modified.
5. 403 = forbidden
	- Server understood, but cannot fill request.
6. 404 = not found
	- Server didn't find a matching url to request info from. 

## Difference between GET and POST request
	Get is used to retrieve remote data, while post is used to insert/update remote data(stackoverflow.com)
	GET will retrieve data and not have any side effects. So requesting the same url over and over will net the same result
	POST allows you to give data, and will have a side effect. 
	POST used for uploading files, info, etc via the body. GET allows retrieval of the same information.

## Cookies
	Cookies are stored files about a particular website. This can be accessed by either the user or the web server, but allows for saved information to be accessed quicker, decrease loading times, save re-usable information, etc. 
	They're typically key-value pairs, for example (firstname, travis). Certain things can be done by a website depending on the stored cookies of the user.
