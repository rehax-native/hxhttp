package hxhttp;

import hxhttp.Common;

@:include('unordered_map')
@:native('std::pair<std::string, std::string>')
@:structAccess
extern class HeaderPair {
	@:native('std::make_pair<std::string, std::string>')
	public function new(key:cpp.StdString, value:cpp.StdString);
}

@:include('unordered_map')
@:native('std::unordered_map<std::string, std::string>')
@:structAccess
extern class HeaderMap {
	@:native('std::unordered_map<std::string, std::string>')
	public function new();

	@:native('insert')
	public function set(pair:HeaderPair):Void;
}

@:native('std::function<void (std::string errorMessage, int status, std::unordered_map<std::string, std::string> responseHeaders, void * data, size_t dataSize)>')
@:structAccess
extern class ResponseCallback {
}

@:include('hxhttp/HttpRequestAppleNative.h')
extern class HttpRequestAppleNative {
	static function request(url:cpp.StdString, method:cpp.StdString, headers:HeaderMap, data:cpp.RawPointer<Void>, dataSize:Int, callback:ResponseCallback):Void;
	static function releaseData(rawData:cpp.RawPointer<Void>):Void;
}

class HttpRequestApple {

	private function __keep() {
		// This would get removed by the haxe compiler if we don't use it.
		// We need it because it's used in the lambda callback.
		haxe.io.Bytes.ofData(new Array<cpp.UInt8>());
	}

    public static function request(options:RequestOptions) {
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
        var url = options.url + query;
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

		var headers:HeaderMap = new HeaderMap();
		if (options.headers != null) {
			for (name in options.headers.keys()) {
				headers.set(new HeaderPair(cpp.StdString.ofString(name), cpp.StdString.ofString(options.headers[name])));
			}
		}

		var dataPointer:Null<cpp.RawPointer<cpp.UInt8>> = null;
		var dataLength = 0;
		if (options.body != null) {
			dataLength = options.body.length;
			var body = options.body.getData();
			dataPointer = untyped __cpp__('body->Pointer()');
		}

		function hxCallback(response:Response) {
			options.onDone(response);
		}

		var response = new Response();


		// TODO something to figure out is whether we call the callback correctly.
		// Because of garbage collection the objects might have already been freed?

		// function hxCallbackXX() {
		// 	hxCallback(response);
		// }
		// hxCallbackXX();

		// untyped __cpp__('HX_BEGIN_LOCAL_FUNC_S2(::hx::LocalFunc,_hx_Closure_1, ::Dynamic,hxCallback, ::hxhttp::Response,response) HXARGC(0)');
		var callback:ResponseCallback = untyped __cpp__('[&{0}, &{1}] (std::string errorMessage, int status, std::unordered_map<std::string, std::string> responseHeaders, void * data, size_t dataSize) {
			HX_TOP_OF_STACK;
			// HX_GC_STACKFRAME(&_hx_pos_a74d7e3624d3f3a7_98_request)
			{0}->statusCode = status;
			if (data != nullptr && dataSize > 0) {
				auto arr = ::Array_obj< unsigned char >::__newConstWrapper((unsigned char *) data, dataSize);
				auto bytes = ::haxe::io::Bytes_obj::ofData(arr);
				{0}->data = bytes;
			}
			// HXLINE(  98) 
			{1}({0});
			hxhttp::HttpRequestAppleNative::releaseData(data);
		}', ${response}, ${hxCallback});
		// untyped __cpp__('HX_END_LOCAL_FUNC0((void))');

		HttpRequestAppleNative.request(cpp.StdString.ofString(url), cpp.StdString.ofString(method), headers, cast dataPointer, dataLength, callback);
    }
}
