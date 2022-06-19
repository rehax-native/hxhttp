# hxhttp

This is a library to make HTTP/S requests natively on each platform.

It currently supports:
 - Js in the browser with [XMLHttpRequests](https://api.haxe.org/js/html/XMLHttpRequest.html)
 - MacOS and iOS with NSURLConnections

Planned platforms:
 - Node.js
 - Windows
 - Android

## Example
```
HttpRequest.request({
    url: "https://httpbin.org/post",
    method: POST,
    headers: [
        'Content-Type' => 'text/plain',
    ],
    queryParams: [
        "param1" => "a",
        "param2" => "b",
    ],
    body: haxe.io.Bytes.ofString('This is my body'),
    onDone: (response:hxhttp.Response) -> {
        trace(response.statusCode); // 200
        var body:Res = haxe.Json.parse(response.data.toString());
        trace(body.url); // https://httpbin.org/post?param1=a&param2=b
        trace(body.args.param1); // a
        trace(body.args.param2); // b
        trace(body.data); // This is my body
    },
});
```

## Known issues

On mac/iOS you need to have a running NSRunLoop. If you don't, the request will block for 5 seconds.