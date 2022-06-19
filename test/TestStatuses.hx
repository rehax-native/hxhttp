package test;

import utest.Assert;
import utest.Async;
import hxhttp.HttpRequest;

class TestStatuses extends utest.Test {

    @:timeout(5000)
    function test200(async:Async) {
        HttpRequest.request({
            url: "https://httpbin.org/status/200",
            method: GET,
            onDone: (response:hxhttp.Response) -> {
                Assert.equals(200, response.statusCode);
                async.done();
            },
        });
    }

    @:timeout(5000)
    function test404(async:Async) {
        HttpRequest.request({
            url: "https://httpbin.org/status/404",
            method: GET,
            onDone: (response:hxhttp.Response) -> {
                Assert.equals(404, response.statusCode);
                async.done();
            },
        });
    }
}