package hxhttp;

enum RequestMethod {
    GET;
    POST;
    PUT;
    DELETE;
    PATCH;
    HEAD;
    OPTIONS;
}

typedef RequestOptions = {
    var url:String;
    var method:RequestMethod;
    var ?body:haxe.io.Bytes;
    var ?queryParams:Map<String, String>;
    var ?headers:Map<String, String>;
    var onDone:(response:Response) -> Void;
}
