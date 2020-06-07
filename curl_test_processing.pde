import http.requests.*;
String uri = loadJsonArray("./config.json").uri;

// now with headers and json support
PostRequest post = new PostRequest(uri);
post.addHeader("acdHeader", "hello world");
post.addJson("{\"items\": [{\"checked\": true, \"text\": \"one\"}, {\"checked\": true, \"text\": \"two\"}]}");
post.send();
println("Response Content: " + post.getContent());
println("Response Content-Length Header: " + post.getHeader("Content-Length"));
