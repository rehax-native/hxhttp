package hxhttp;

#if js
typedef HttpRequest = HttpRequestJs;
#else
typedef HttpRequest = HttpRequestApple;
#end
