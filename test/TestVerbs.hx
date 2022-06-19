package test;

import utest.Assert;
import utest.Async;
import hxhttp.HttpRequest;

typedef ResArgs = {
    var param1:String;
    var param2:String;
}

typedef Res = {
    var url:String;
    var args:ResArgs;
    var ?data:String;
};

class TestVerbs extends utest.Test {
//   var field:String;

//   //synchronous setup
//   public function setup() {
//     field = "some";
//   }

//   function testFieldIsSome() {
//     Assert.equals("some", field);
//   }

//   function specField() {
//     field.charAt(0) == 's';
//     field.length > 3;
//   }

//   //asynchronous teardown
//   @:timeout(700) //default timeout is 250ms
//   public function teardown(async:Async) {
//     field = null; // not really needed

//     //simulate asynchronous teardown
//     haxe.Timer.delay(
//       function() {
//         //resolve asynchronous action
//         async.done();
//       },
//       500
//     );
//   }

    @:timeout(5000)
    function testGet(async:Async) {
        HttpRequest.request({
            url: "https://httpbin.org/get",
            method: GET,
            queryParams: [
                "param1" => "a",
                "param2" => "b",
            ],
            onDone: (response:hxhttp.Response) -> {
                Assert.equals(200, response.statusCode);
                var body:Res = haxe.Json.parse(response.data.toString());
                Assert.equals('https://httpbin.org/get?param1=a&param2=b', body.url);
                Assert.equals('a', body.args.param1);
                Assert.equals('b', body.args.param2);
                async.done();
            },
        });
    }

    @:timeout(5000)
    function testDelete(async:Async) {
        HttpRequest.request({
            url: "https://httpbin.org/delete",
            method: DELETE,
            queryParams: [
                "param1" => "a",
                "param2" => "b",
            ],
            onDone: (response:hxhttp.Response) -> {
                Assert.equals(200, response.statusCode);
                var body:Res = haxe.Json.parse(response.data.toString());
                Assert.equals('https://httpbin.org/delete?param1=a&param2=b', body.url);
                Assert.equals('a', body.args.param1);
                Assert.equals('b', body.args.param2);
                async.done();
            },
        });
    }

    @:timeout(5000)
    function testPost(async:Async) {
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
                Assert.equals(200, response.statusCode);
                var body:Res = haxe.Json.parse(response.data.toString());
                Assert.equals('https://httpbin.org/post?param1=a&param2=b', body.url);
                Assert.equals('a', body.args.param1);
                Assert.equals('b', body.args.param2);
                Assert.equals('This is my body', body.data);
                async.done();
            },
        });
    }
}