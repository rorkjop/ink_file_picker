## 0.0.3
* Raise UnexpectedResponseError if we receive a 200 OK, but response body is neither "success", nor valid JSON.
  This may happen if you ask File Picker to download a URL, but the server for the given URL fails to respond
  within five(?) seconds. We will then have a 200 OK, but the body will reveal the timeout error in text and
  the UnexpectedResponseError is raised. Other download errors may also be in the response, for instance
  "Invalid response when trying to read from `http://some.url.com/here.jpg`.


## 0.0.2
* You can call to_hash on response objects.

## 0.0.1
* First release. Main functionality like store_url, store_file, remove, stat etc.
