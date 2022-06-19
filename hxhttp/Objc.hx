package hxhttp;

macro function NSData_NSURLResponse_NSError(call:Dynamic):Dynamic {
	return macro {
		untyped __cpp__("^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error){
                dispatch_async(dispatch_get_main_queue(), ^(){  
                    {0}(data,response,error);
                });
		}", ${call});
	};
}