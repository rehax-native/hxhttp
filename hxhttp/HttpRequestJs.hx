package hxhttp;

import haxe.Http;
import hxhttp.Common;

class HttpRequestJs {
    public static function request(options:RequestOptions) {
		var request = new js.html.XMLHttpRequest();
        var response = new Response();
		request.onreadystatechange = function() {
			if (request.readyState == js.html.XMLHttpRequest.DONE) {
				response.statusCode = request.status;
				switch (request.responseType) {
					case ARRAYBUFFER:
					case BLOB:
					case DOCUMENT:
						response.data = haxe.io.Bytes.ofString(request.responseText);
					case JSON:
						response.data = haxe.io.Bytes.ofString(request.responseText);
					case TEXT:
						response.data = haxe.io.Bytes.ofString(request.responseText);
					case NONE:
						if (request.responseText != null) {
							response.data = haxe.io.Bytes.ofString(request.responseText);
						}
					default:
				}
				options.onDone(response);
			}
		}
		var method = 'GET';
        switch (options.method) {
            case GET:
                method = "GET";
            case POST:
                method = "POST";
            case PUT:
                method = "PUT";
            case DELETE:
                method = "DELETE";
            case PATCH:
                method = "PATCH";
            case HEAD:
                method = "HEAD";
            case OPTIONS:
                method = "OPTIONS";
        }

		var query = '';
		if (options.queryParams != null) {
			query = '?';
			var count = 0;
			for (name in options.queryParams.keys()) {
				if (count > 0) {
					query += '&';
				}
				query += '${name}=${options.queryParams[name]}';
				count++;
			}
		}

		request.open(method, options.url + query);

		if (options.headers != null) {
			for (name in options.headers.keys()) {
				request.setRequestHeader(name, options.headers[name]);
			}
		}

		if (options.body != null) {
			request.send(options.body.toString());
		} else {
			request.send();
		}





		// var http = new Http(options.url);

		// if (options.queryParams != null) {
		// 	for (name in options.queryParams.keys()) {
		// 		http.setParameter(name, options.queryParams[name]);
		// 	}
		// }
		// if (options.headers != null) {
		// 	for (name in options.headers.keys()) {
		// 		http.setHeader(name, options.headers[name]);
		// 	}
		// }
        // if (options.body != null) {
		// 	http.setPostBytes(options.body);
        // }

        // var response = new Response();

        // http.onStatus = function (status:Int) {
		// 	response.statusCode = status;
		// }

        // http.onBytes = function (data:haxe.io.Bytes) {
		// 	response.data = data;
		// 	options.onDone(response);
        // }
        
        // http.onError = function (error) {
		// 	response.errorMessage = error;
		// 	options.onDone(response);
        // }
        
		// var method = 'GET';
        // switch (options.method) {
        //     case GET:
        //         method = "GET";
        //     case POST:
        //         method = "POST";
        //     case PUT:
        //         method = "PUT";
        //     case DELETE:
        //         method = "DELETE";
        //     case PATCH:
        //         method = "PATCH";
        //     case HEAD:
        //         method = "HEAD";
        //     case OPTIONS:
        //         method = "OPTIONS";
        // }
		// var bytesOutput = new haxe.io.BytesOutput();
		// // http.customRequest(options.method == POST, bytesOutput, null, method);
        // http.request();

		// // Done after here
		// response.data = bytesOutput.getBytes();
		// options.onDone(response);
    }
}
