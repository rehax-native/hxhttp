package hxhttp;

import cpp.objc.NSString;
import cpp.objc.NSData;
import cpp.objc.NSDictionary;
import cpp.objc.NSError;
import hxhttp.Common;

// @:objc
// @:native("NSCoding")
// @:include("Foundation/Foundation.h")
// extern interface NSCoding {
// 	@:native("alloc")
// 	overload public static function alloc():NSCoding;
// 	@:native("autorelease")
// 	overload public static function autorelease():NSCoding;
// 	@:native("encodeWithCoder")
// 	overload public function encodeWithCoder(coder:NSCoder):Void;
// 	@:native("initWithCoder")
// 	overload public function initWithCoder(coder:NSCoder):NSCoding;
// }

@:objc
@:native("NSDate")
@:include("Foundation/Foundation.h")
extern class NSDate
{
	@:native("alloc")
	overload public static function alloc():NSDate;
	@:native("autorelease")
	overload public static function autorelease():NSDate;
	@:native("timeIntervalSinceReferenceDate")
	public var timeIntervalSinceReferenceDate:Dynamic;
	@:native("init")
	overload public function init():NSDate;
	@:native("initWithTimeIntervalSinceReferenceDate")
	overload public function initWithTimeIntervalSinceReferenceDate(ti:Dynamic):NSDate;
	// @:native("initWithCoder")
	// overload public function initWithCoder(coder:NSCoder):NSDate;
	@:native("timeIntervalSinceDate")
	overload public function timeIntervalSinceDate(anotherDate:NSDate):Dynamic;
	@:native("timeIntervalSinceNow")
	public var timeIntervalSinceNow:Dynamic;
	@:native("timeIntervalSince1970")
	public var timeIntervalSince1970:Dynamic;
	@:native("dateByAddingTimeInterval")
	overload public function dateByAddingTimeInterval(ti:Dynamic):NSDate;
	@:native("earlierDate")
	overload public function earlierDate(anotherDate:NSDate):NSDate;
	@:native("laterDate")
	overload public function laterDate(anotherDate:NSDate):NSDate;
	@:native("compare")
	overload public function compare(other:NSDate):Dynamic;
	@:native("isEqualToDate")
	overload public function isEqualToDate(otherDate:NSDate):Bool;
	@:native("description")
	public var description:NSString;
	@:native("descriptionWithLocale")
	overload public function descriptionWithLocale(locale:Dynamic):NSString;
	@:native("timeIntervalSinceReferenceDate")
	overload public static function timeIntervalSinceReferenceDate():Dynamic;
	@:native("date")
	overload public static function date():NSDate;
	@:native("dateWithTimeIntervalSinceNow")
	overload public static function dateWithTimeIntervalSinceNow(secs:Dynamic):NSDate;
	@:native("dateWithTimeIntervalSinceReferenceDate")
	overload public static function dateWithTimeIntervalSinceReferenceDate(ti:Dynamic):NSDate;
	@:native("dateWithTimeIntervalSince1970")
	overload public static function dateWithTimeIntervalSince1970(secs:Dynamic):NSDate;
	@:native("dateWithTimeInterval:sinceDate")
	overload public static function dateWithTimeIntervalSinceDate(secsToBeAdded:Dynamic, sinceDate:NSDate):NSDate;
	@:native("distantFuture")
	overload public static function distantFuture():NSDate;
	@:native("distantPast")
	overload public static function distantPast():NSDate;
	@:native("now")
	overload public static function now():NSDate;
	@:native("initWithTimeIntervalSinceNow")
	overload public function initWithTimeIntervalSinceNow(secs:Dynamic):NSDate;
	@:native("initWithTimeIntervalSince1970")
	overload public function initWithTimeIntervalSince1970(secs:Dynamic):NSDate;
	@:native("initWithTimeInterval:sinceDate")
	overload public function initWithTimeIntervalSinceDate(secsToBeAdded:Dynamic, sinceDate:NSDate):NSDate;
	// @:native("copyWithZone")
	// overload public function copyWithZone(zone:Dynamic /*_NSZone*/):Dynamic;
	// @:native("supportsSecureCoding")
	// overload public static function supportsSecureCoding():Bool;
	// @:native("encodeWithCoder")
	// overload public function encodeWithCoder(aCoder:Dynamic):Void;
}

@:objc
@:native("NSURL")
@:include("Foundation/Foundation.h")
extern class NSURL
{

	@:native("alloc")
	overload public static function alloc():NSURL;
	@:native("autorelease")
	overload public static function autorelease():NSURL;
	// @:native("initFileURLWithPath:isDirectory:relativeToURL")
	// overload public function initFileURLWithPathIsDirectoryRelativeToURL(path:NSString, isDirectory:Bool, relativeToURL:NSURL):NSURL;
	// @:native("initFileURLWithPath:relativeToURL")
	// overload public function initFileURLWithPathRelativeToURL(path:NSString, relativeToURL:NSURL):NSURL;
	// @:native("initFileURLWithPath:isDirectory")
	// overload public function initFileURLWithPathIsDirectory(path:NSString, isDirectory:Bool):NSURL;
	// @:native("initFileURLWithPath")
	// overload public function initFileURLWithPath(path:NSString):NSURL;
	// @:native("fileURLWithPath:isDirectory:relativeToURL")
	// overload public static function fileURLWithPathIsDirectoryRelativeToURL(path:NSString, isDirectory:Bool, relativeToURL:NSURL):NSURL;
	// @:native("fileURLWithPath:relativeToURL")
	// overload public static function fileURLWithPathRelativeToURL(path:NSString, relativeToURL:NSURL):NSURL;
	// @:native("fileURLWithPath:isDirectory")
	// overload public static function fileURLWithPathIsDirectory(path:NSString, isDirectory:Bool):NSURL;
	// @:native("fileURLWithPath")
	// overload public static function fileURLWithPath(path:NSString):NSURL;
	// @:native("initFileURLWithFileSystemRepresentation:isDirectory:relativeToURL")
	// overload public function initFileURLWithFileSystemRepresentationIsDirectoryRelativeToURL(path:Dynamic, isDirectory:Bool, relativeToURL:NSURL):NSURL;
	// @:native("fileURLWithFileSystemRepresentation:isDirectory:relativeToURL")
	// overload public static function fileURLWithFileSystemRepresentationIsDirectoryRelativeToURL(path:Dynamic, isDirectory:Bool, relativeToURL:NSURL):NSURL;
	// @:native("initWithString")
	// overload public function initWithString(URLString:NSString):NSURL;
	// @:native("initWithString:relativeToURL")
	// overload public function initWithStringRelativeToURL(URLString:NSString, relativeToURL:NSURL):NSURL;
	@:native("URLWithString")
	overload public static function URLWithString(URLString:NSString):NSURL;
	// @:native("URLWithString:relativeToURL")
	// overload public static function URLWithStringRelativeToURL(URLString:NSString, relativeToURL:NSURL):NSURL;
	// @:native("initWithDataRepresentation:relativeToURL")
	// overload public function initWithDataRepresentationRelativeToURL(data:NSData, relativeToURL:NSURL):NSURL;
	// @:native("URLWithDataRepresentation:relativeToURL")
	// overload public static function URLWithDataRepresentationRelativeToURL(data:NSData, relativeToURL:NSURL):NSURL;
	// @:native("initAbsoluteURLWithDataRepresentation:relativeToURL")
	// overload public function initAbsoluteURLWithDataRepresentationRelativeToURL(data:NSData, relativeToURL:NSURL):NSURL;
	// @:native("absoluteURLWithDataRepresentation:relativeToURL")
	// overload public static function absoluteURLWithDataRepresentationRelativeToURL(data:NSData, relativeToURL:NSURL):NSURL;
	// @:native("dataRepresentation")
	// public var dataRepresentation:NSData;
	// @:native("absoluteString")
	// public var absoluteString:NSString;
	// @:native("relativeString")
	// public var relativeString:NSString;
	// @:native("baseURL")
	// public var baseURL:NSURL;
	// @:native("absoluteURL")
	// public var absoluteURL:NSURL;
	// @:native("scheme")
	// public var scheme:NSString;
	// @:native("resourceSpecifier")
	// public var resourceSpecifier:NSString;
	// @:native("host")
	// public var host:NSString;
	// @:native("port")
	// public var port:NSNumber;
	// @:native("user")
	// public var user:NSString;
	// @:native("password")
	// public var password:NSString;
	// @:native("path")
	// public var path:NSString;
	// @:native("fragment")
	// public var fragment:NSString;
	// @:native("parameterString")
	// public var parameterString:NSString;
	@:native("query")
	public var query:NSString;
	// @:native("relativePath")
	// public var relativePath:NSString;
	// @:native("hasDirectoryPath")
	// public var hasDirectoryPath:Bool;
	// @:native("getFileSystemRepresentation:maxLength")
	// overload public function getFileSystemRepresentationMaxLength(buffer:Dynamic, maxLength:Int):Bool;
	// @:native("fileSystemRepresentation")
	// public var fileSystemRepresentation:Dynamic;
	// @:native("fileURL")
	// public var fileURL:Bool;
	// @:native("standardizedURL")
	// public var standardizedURL:NSURL;
	// @:native("checkResourceIsReachableAndReturnError")
	// overload public function checkResourceIsReachableAndReturnError(error:NSError):Bool;
	// @:native("isFileReferenceURL")
	// overload public function isFileReferenceURL():Bool;
	// @:native("fileReferenceURL")
	// overload public function fileReferenceURL():NSURL;
	// @:native("filePathURL")
	// public var filePathURL:NSURL;
	// @:native("getResourceValue:forKey:error")
	// overload public function getResourceValueForKeyError(value:Dynamic, forKey:NSString, error:Dynamic):Bool;
	// @:native("resourceValuesForKeys:error")
	// overload public function resourceValuesForKeysError(keys:NSArray, error:NSError):NSDictionary;
	// @:native("setResourceValue:forKey:error")
	// overload public function setResourceValueForKeyError(value:Dynamic, forKey:NSString, error:NSError):Bool;
	// @:native("setResourceValues:error")
	// overload public function setResourceValuesError(keyedValues:NSDictionary, error:NSError):Bool;
	// @:native("removeCachedResourceValueForKey")
	// overload public function removeCachedResourceValueForKey(key:NSString):Void;
	// @:native("removeAllCachedResourceValues")
	// overload public function removeAllCachedResourceValues():Void;
	// @:native("setTemporaryResourceValue:forKey")
	// overload public function setTemporaryResourceValueForKey(value:Dynamic, forKey:NSString):Void;
	// @:native("bookmarkDataWithOptions:includingResourceValuesForKeys:relativeToURL:error")
	// overload public function bookmarkDataWithOptionsIncludingResourceValuesForKeysRelativeToURLError(options:Dynamic, includingResourceValuesForKeys:NSArray, relativeToURL:NSURL, error:NSError):NSData;
	// @:native("initByResolvingBookmarkData:options:relativeToURL:bookmarkDataIsStale:error")
	// overload public function initByResolvingBookmarkDataOptionsRelativeToURLBookmarkDataIsStaleError(bookmarkData:NSData, options:Dynamic, relativeToURL:NSURL, bookmarkDataIsStale:Dynamic, error:NSError):NSURL;
	// @:native("URLByResolvingBookmarkData:options:relativeToURL:bookmarkDataIsStale:error")
	// overload public static function URLByResolvingBookmarkDataOptionsRelativeToURLBookmarkDataIsStaleError(bookmarkData:NSData, options:Dynamic, relativeToURL:NSURL, bookmarkDataIsStale:Dynamic, error:NSError):NSURL;
	// @:native("resourceValuesForKeys:fromBookmarkData")
	// overload public static function resourceValuesForKeysFromBookmarkData(keys:NSArray, fromBookmarkData:NSData):NSDictionary;
	// @:native("writeBookmarkData:toURL:options:error")
	// overload public static function writeBookmarkDataToURLOptionsError(bookmarkData:NSData, toURL:NSURL, options:Dynamic, error:NSError):Bool;
	// @:native("bookmarkDataWithContentsOfURL:error")
	// overload public static function bookmarkDataWithContentsOfURLError(bookmarkFileURL:NSURL, error:NSError):NSData;
	// @:native("URLByResolvingAliasFileAtURL:options:error")
	// overload public static function URLByResolvingAliasFileAtURLOptionsError(url:NSURL, options:Dynamic, error:NSError):NSURL;
	// @:native("startAccessingSecurityScopedResource")
	// overload public function startAccessingSecurityScopedResource():Bool;
	// @:native("stopAccessingSecurityScopedResource")
	// overload public function stopAccessingSecurityScopedResource():Void;
	// @:native("getPromisedItemResourceValue:forKey:error")
	// overload public function getPromisedItemResourceValueForKeyError(value:Dynamic, forKey:NSString, error:NSError):Bool;
	// @:native("promisedItemResourceValuesForKeys:error")
	// overload public function promisedItemResourceValuesForKeysError(keys:NSArray, error:NSError):NSDictionary;
	// @:native("checkPromisedItemIsReachableAndReturnError")
	// overload public function checkPromisedItemIsReachableAndReturnError(error:NSError):Bool;
	// @:native("fileURLWithPathComponents")
	// overload public static function fileURLWithPathComponents(components:NSArray):NSURL;
	// @:native("pathComponents")
	// public var pathComponents:NSArray;
	// @:native("lastPathComponent")
	// public var lastPathComponent:NSString;
	// @:native("pathExtension")
	// public var pathExtension:NSString;
	// @:native("URLByAppendingPathComponent")
	// overload public function URLByAppendingPathComponent(pathComponent:NSString):NSURL;
	// @:native("URLByAppendingPathComponent:isDirectory")
	// overload public function URLByAppendingPathComponentIsDirectory(pathComponent:NSString, isDirectory:Bool):NSURL;
	// @:native("URLByDeletingLastPathComponent")
	// public var URLByDeletingLastPathComponent:NSURL;
	// @:native("URLByAppendingPathExtension")
	// overload public function URLByAppendingPathExtension(pathExtension:NSString):NSURL;
	// @:native("URLByDeletingPathExtension")
	// public var URLByDeletingPathExtension:NSURL;
	// @:native("URLByStandardizingPath")
	// public var URLByStandardizingPath:NSURL;
	// @:native("URLByResolvingSymlinksInPath")
	// public var URLByResolvingSymlinksInPath:NSURL;
	// @:native("supportsSecureCoding")
	// overload public static function supportsSecureCoding():Bool;
	// @:native("encodeWithCoder")
	// overload public function encodeWithCoder(aCoder:Dynamic):Void;
	// @:native("initWithCoder")
	// overload public function initWithCoder(aDecoder:Dynamic):NSCoding;
	// @:native("copyWithZone")
	// overload public function copyWithZone(zone:Dynamic /*_NSZone*/):Dynamic;
}

@:objc
@:native("NSURLSession")
@:include("Foundation/Foundation.h")
extern class NSURLSession{
	@:native("alloc")
	overload public static function alloc():NSURLSession;
	@:native("autorelease")
	overload public static function autorelease():NSURLSession;
	@:native("sharedSession")
	overload public static function sharedSession():NSURLSession;
	// @:native("sessionWithConfiguration")
	// overload public static function sessionWithConfiguration(configuration:NSURLSessionConfiguration):NSURLSession;
	// @:native("sessionWithConfiguration:delegate:delegateQueue")
	// overload public static function sessionWithConfigurationDelegateDelegateQueue(configuration:NSURLSessionConfiguration, delegate:Dynamic, delegateQueue:NSOperationQueue):NSURLSession;
	// @:native("delegateQueue")
	// public var delegateQueue:NSOperationQueue;
	// @:native("delegate")
	// public var delegate:Dynamic;
	// @:native("configuration")
	// public var configuration:NSURLSessionConfiguration;
	// @:native("sessionDescription")
	// public var sessionDescription:NSString;
	// @:native("finishTasksAndInvalidate")
	// overload public function finishTasksAndInvalidate():Void;
	// @:native("invalidateAndCancel")
	// overload public function invalidateAndCancel():Void;
	// @:native("resetWithCompletionHandler")
	// overload public function resetWithCompletionHandler(completionHandler:Dynamic):Void;
	// @:native("flushWithCompletionHandler")
	// overload public function flushWithCompletionHandler(completionHandler:Dynamic):Void;
	// @:native("getTasksWithCompletionHandler")
	// overload public function getTasksWithCompletionHandler(completionHandler:Dynamic):Void;
	// @:native("getAllTasksWithCompletionHandler")
	// overload public function getAllTasksWithCompletionHandler(completionHandler:Dynamic):Void;
	// @:native("dataTaskWithRequest")
	// overload public function dataTaskWithRequest(request:NSURLRequest):NSURLSessionDataTask;
	// @:native("dataTaskWithURL")
	// overload public function dataTaskWithURL(url:NSURL):NSURLSessionDataTask;
	// @:native("uploadTaskWithRequest:fromFile")
	// overload public function uploadTaskWithRequestFromFile(request:NSURLRequest, fromFile:NSURL):NSURLSessionUploadTask;
	// @:native("uploadTaskWithRequest:fromData")
	// overload public function uploadTaskWithRequestFromData(request:NSURLRequest, fromData:NSData):NSURLSessionUploadTask;
	// @:native("uploadTaskWithStreamedRequest")
	// overload public function uploadTaskWithStreamedRequest(request:NSURLRequest):NSURLSessionUploadTask;
	// @:native("downloadTaskWithRequest")
	// overload public function downloadTaskWithRequest(request:NSURLRequest):NSURLSessionDownloadTask;
	// @:native("downloadTaskWithURL")
	// overload public function downloadTaskWithURL(url:NSURL):NSURLSessionDownloadTask;
	// @:native("downloadTaskWithResumeData")
	// overload public function downloadTaskWithResumeData(resumeData:NSData):NSURLSessionDownloadTask;
	// @:native("streamTaskWithHostName:port")
	// overload public function streamTaskWithHostNamePort(hostname:NSString, port:Int):NSURLSessionStreamTask;
	// @:native("streamTaskWithNetService")
	// overload public function streamTaskWithNetService(service:NSNetService):NSURLSessionStreamTask;
	// @:native("webSocketTaskWithURL")
	// overload public function webSocketTaskWithURL(url:NSURL):NSURLSessionWebSocketTask;
	// @:native("webSocketTaskWithURL:protocols")
	// overload public function webSocketTaskWithURLProtocols(url:NSURL, protocols:NSArray):NSURLSessionWebSocketTask;
	// @:native("webSocketTaskWithRequest")
	// overload public function webSocketTaskWithRequest(request:NSURLRequest):NSURLSessionWebSocketTask;
	@:native("dataTaskWithRequest:completionHandler")
	overload public function dataTaskWithRequestCompletionHandler(request:NSURLRequest, completionHandler:Dynamic):NSURLSessionDataTask;
	// @:native("dataTaskWithURL:completionHandler")
	// overload public function dataTaskWithURLCompletionHandler(url:NSURL, completionHandler:Dynamic):NSURLSessionDataTask;
	// @:native("uploadTaskWithRequest:fromFile:completionHandler")
	// overload public function uploadTaskWithRequestFromFileCompletionHandler(request:NSURLRequest, fromFile:NSURL, completionHandler:Dynamic):NSURLSessionUploadTask;
	// @:native("uploadTaskWithRequest:fromData:completionHandler")
	// overload public function uploadTaskWithRequestFromDataCompletionHandler(request:NSURLRequest, fromData:NSData, completionHandler:Dynamic):NSURLSessionUploadTask;
	// @:native("downloadTaskWithRequest:completionHandler")
	// overload public function downloadTaskWithRequestCompletionHandler(request:NSURLRequest, completionHandler:Dynamic):NSURLSessionDownloadTask;
	// @:native("downloadTaskWithURL:completionHandler")
	// overload public function downloadTaskWithURLCompletionHandler(url:NSURL, completionHandler:Dynamic):NSURLSessionDownloadTask;
	// @:native("downloadTaskWithResumeData:completionHandler")
	// overload public function downloadTaskWithResumeDataCompletionHandler(resumeData:NSData, completionHandler:Dynamic):NSURLSessionDownloadTask;
}

@:objc
@:native("NSURLSessionTask")
@:include("Foundation/Foundation.h")
extern class NSURLSessionTask
{
	@:native("alloc")
	overload public static function alloc():NSURLSessionTask;
	@:native("autorelease")
	overload public static function autorelease():NSURLSessionTask;
	@:native("session")
	public var session:Dynamic;
	@:native("task")
	public var task:Dynamic;
	@:native("redirection")
	public var redirection:Dynamic;
	@:native("received")
	public var received:Dynamic;
	// @:native("progress")
	// public var progress:NSProgress;
	// @:native("earliestBeginDate")
	// public var earliestBeginDate:NSDate;
	// @:native("countOfBytesClientExpectsToSend")
	// public var countOfBytesClientExpectsToSend:Dynamic;
	// @:native("countOfBytesClientExpectsToReceive")
	// public var countOfBytesClientExpectsToReceive:Dynamic;
	// @:native("countOfBytesReceived")
	// public var countOfBytesReceived:Dynamic;
	// @:native("countOfBytesSent")
	// public var countOfBytesSent:Dynamic;
	// @:native("countOfBytesExpectedToSend")
	// public var countOfBytesExpectedToSend:Dynamic;
	// @:native("countOfBytesExpectedToReceive")
	// public var countOfBytesExpectedToReceive:Dynamic;
	// @:native("taskDescription")
	// public var taskDescription:NSString;
	// @:native("cancel")
	// overload public function cancel():Void;
	// @:native("state")
	// public var state:NSURLSessionTaskState;
	// @:native("error")
	// public var error:NSError;
	// @:native("suspend")
	// overload public function suspend():Void;
	// @:native("resume")
	// overload public function resume():Void;
	// @:native("priority")
	// public var priority:Dynamic;
	// @:native("copyWithZone")
	// overload public function copyWithZone(zone:Dynamic /*_NSZone*/):Dynamic;
}

@:objc
@:native("NSURLSessionDataTask")
@:include("Foundation/Foundation.h")
extern class NSURLSessionDataTask extends NSURLSessionTask{
	@:native("alloc")
	overload public static function alloc():NSURLSessionDataTask;
	@:native("autorelease")
	overload public static function autorelease():NSURLSessionDataTask;
	@:native("cancel")
	overload public function cancel():Void;
	@:native("suspend")
	overload public function suspend():Void;
	@:native("resume")
	overload public function resume():Void;
	@:native("copyWithZone")
	overload public function copyWithZone(zone:Dynamic /*_NSZone*/):Dynamic;
}

@:objc
@:native("NSURLRequest")
@:include("Foundation/Foundation.h")
extern class NSURLRequest
{

	@:native("alloc")
	overload public static function alloc():NSURLRequest;
	@:native("autorelease")
	overload public static function autorelease():NSURLRequest;
	@:native("requestWithURL")
	overload public static function requestWithURL(URL:NSURL):NSURLRequest;
	// @:native("supportsSecureCoding")
	// overload public static function supportsSecureCoding():Bool;
	// @:native("requestWithURL:cachePolicy:timeoutInterval")
	// overload public static function requestWithURLCachePolicyTimeoutInterval(URL:NSURL, cachePolicy:NSURLRequestCachePolicy, timeoutInterval:Dynamic):NSURLRequest;
	@:native("initWithURL")
	overload public function initWithURL(URL:NSURL):NSURLRequest;
	// @:native("initWithURL:cachePolicy:timeoutInterval")
	// overload public function initWithURLCachePolicyTimeoutInterval(URL:NSURL, cachePolicy:NSURLRequestCachePolicy, timeoutInterval:Dynamic):NSURLRequest;
	@:native("URL")
	public var URL:NSURL;
	// @:native("cachePolicy")
	// public var cachePolicy:NSURLRequestCachePolicy;
	// @:native("timeoutInterval")
	// public var timeoutInterval:Dynamic;
	// @:native("mainDocumentURL")
	// public var mainDocumentURL:NSURL;
	// @:native("networkServiceType")
	// public var networkServiceType:NSURLRequestNetworkServiceType;
	// @:native("allowsCellularAccess")
	// public var allowsCellularAccess:Bool;
	// @:native("allowsExpensiveNetworkAccess")
	// public var allowsExpensiveNetworkAccess:Bool;
	// @:native("allowsConstrainedNetworkAccess")
	// public var allowsConstrainedNetworkAccess:Bool;
	@:native("HTTPMethod")
	public var HTTPMethod:NSString;
	// @:native("allHTTPHeaderFields")
	// public var allHTTPHeaderFields:NSDictionary;
	// @:native("valueForHTTPHeaderField")
	// overload public function valueForHTTPHeaderField(field:NSString):NSString;
	@:native("HTTPBody")
	public var HTTPBody:NSData;
	// @:native("HTTPBodyStream")
	// public var HTTPBodyStream:NSInputStream;
	// @:native("HTTPShouldHandleCookies")
	// public var HTTPShouldHandleCookies:Bool;
	// @:native("HTTPShouldUsePipelining")
	// public var HTTPShouldUsePipelining:Bool;
	// @:native("encodeWithCoder")
	// overload public function encodeWithCoder(aCoder:Dynamic):Void;
	// @:native("initWithCoder")
	// overload public function initWithCoder(aDecoder:Dynamic):NSCoding;
	// @:native("copyWithZone")
	// overload public function copyWithZone(zone:Dynamic /*_NSZone*/):Dynamic;
}

@:objc
@:native("NSMutableURLRequest")
@:include("Foundation/Foundation.h")
extern class NSMutableURLRequest extends NSURLRequest {
	@:native("alloc")
	overload public static function alloc():NSMutableURLRequest;
	@:native("autorelease")
	overload public static function autorelease():NSMutableURLRequest;
	@:native("setValue:forHTTPHeaderField")
	overload public function setValueForHTTPHeaderField(value:NSString, forHTTPHeaderField:NSString):Void;
	@:native("addValue:forHTTPHeaderField")
	overload public function addValueForHTTPHeaderField(value:NSString, forHTTPHeaderField:NSString):Void;
	@:native("requestWithURL")
	overload public static function requestWithURL(URL:NSURL):NSMutableURLRequest;
	@:native("supportsSecureCoding")
	overload public static function supportsSecureCoding():Bool;
	// @:native("requestWithURL:cachePolicy:timeoutInterval")
	// overload public static function requestWithURLCachePolicyTimeoutInterval(URL:NSURL, cachePolicy:NSURLRequestCachePolicy, timeoutInterval:Dynamic):NSMutableURLRequest;
	// @:native("initWithURL")
	// overload public function initWithURL(URL:NSURL):NSMutableURLRequest;
	// @:native("initWithURL:cachePolicy:timeoutInterval")
	// overload public function initWithURLCachePolicyTimeoutInterval(URL:NSURL, cachePolicy:NSURLRequestCachePolicy, timeoutInterval:Dynamic):NSMutableURLRequest;
	// @:native("valueForHTTPHeaderField")
	// overload public function valueForHTTPHeaderField(field:NSString):NSString;
	// @:native("encodeWithCoder")
	// overload public function encodeWithCoder(aCoder:Dynamic):Void;
	// @:native("initWithCoder")
	// overload public function initWithCoder(aDecoder:Dynamic):NSCoding;
	// @:native("copyWithZone")
	// overload public function copyWithZone(zone:Dynamic /*_NSZone*/):Dynamic;
}

@:objc
@:native("NSURLConnection")
@:include("Foundation/Foundation.h")
extern class NSURLConnection{
	@:native("alloc")
	overload public static function alloc():NSURLConnection;
	@:native("autorelease")
	overload public static function autorelease():NSURLConnection;
	@:native("originalRequest")
	public var originalRequest:NSURLRequest;
	@:native("currentRequest")
	public var currentRequest:NSURLRequest;
	@:native("start")
	overload public function start():Void;
	@:native("cancel")
	overload public function cancel():Void;
	// @:native("scheduleInRunLoop:forMode")
	// overload public function scheduleInRunLoopForMode(aRunLoop:NSRunLoop, forMode:Dynamic):Void;
	// @:native("unscheduleFromRunLoop:forMode")
	// overload public function unscheduleFromRunLoopForMode(aRunLoop:NSRunLoop, forMode:Dynamic):Void;
	// @:native("setDelegateQueue")
	// overload public function setDelegateQueue(queue:NSOperationQueue):Void;
	// @:native("canHandleRequest")
	// overload public static function canHandleRequest(request:NSURLRequest):Bool;
}


@:objc
@:native("NSURLResponse")
@:include("Foundation/Foundation.h")
extern class NSURLResponse
{
	@:native("alloc")
	overload public static function alloc():NSURLResponse;
	@:native("autorelease")
	overload public static function autorelease():NSURLResponse;
	@:native("initWithURL:MIMEType:expectedContentLength:textEncodingName")
	overload public function initWithURLMIMETypeExpectedContentLengthTextEncodingName(URL:NSURL, MIMEType:NSString, expectedContentLength:Int, textEncodingName:NSString):NSURLResponse;
	@:native("URL")
	public var URL:NSURL;
	@:native("MIMEType")
	public var MIMEType:NSString;
	@:native("expectedContentLength")
	public var expectedContentLength:Dynamic;
	@:native("textEncodingName")
	public var textEncodingName:NSString;
	@:native("suggestedFilename")
	public var suggestedFilename:NSString;
	@:native("supportsSecureCoding")
	overload public static function supportsSecureCoding():Bool;
	@:native("encodeWithCoder")
	overload public function encodeWithCoder(aCoder:Dynamic):Void;
	// @:native("initWithCoder")
	// overload public function initWithCoder(aDecoder:Dynamic):NSCoding;
	@:native("copyWithZone")
	overload public function copyWithZone(zone:Dynamic /*_NSZone*/):Dynamic;
}

@:objc
@:native("NSHTTPURLResponse")
@:include("Foundation/Foundation.h")
extern class NSHTTPURLResponse extends NSURLResponse{
	@:native("alloc")
	overload public static function alloc():NSHTTPURLResponse;
	@:native("autorelease")
	overload public static function autorelease():NSHTTPURLResponse;
	@:native("initWithURL:statusCode:HTTPVersion:headerFields")
	overload public function initWithURLStatusCodeHTTPVersionHeaderFields(url:NSURL, statusCode:Int, HTTPVersion:NSString, headerFields:NSDictionary):NSHTTPURLResponse;
	@:native("statusCode")
	public var statusCode:Int;
	@:native("allHeaderFields")
	public var allHeaderFields:NSDictionary;
	@:native("valueForHTTPHeaderField")
	overload public function valueForHTTPHeaderField(field:NSString):NSString;
	@:native("localizedStringForStatusCode")
	overload public static function localizedStringForStatusCode(statusCode:Int):NSString;
	@:native("initWithURL:MIMEType:expectedContentLength:textEncodingName")
	overload public function initWithURLMIMETypeExpectedContentLengthTextEncodingName(URL:NSURL, MIMEType:NSString, expectedContentLength:Int, textEncodingName:NSString):NSHTTPURLResponse;
	@:native("supportsSecureCoding")
	overload public static function supportsSecureCoding():Bool;
	@:native("encodeWithCoder")
	overload public function encodeWithCoder(aCoder:Dynamic):Void;
	// @:native("initWithCoder")
	// overload public function initWithCoder(aDecoder:Dynamic):NSCoding;
	@:native("copyWithZone")
	overload public function copyWithZone(zone:Dynamic /*_NSZone*/):Dynamic;
}

@:objc
@:native("NSRunLoop")
@:include("Foundation/Foundation.h")
extern class NSRunLoop{
	@:native("alloc")
	overload public static function alloc():NSRunLoop;
	@:native("autorelease")
	overload public static function autorelease():NSRunLoop;
	@:native("currentRunLoop")
	overload public static function currentRunLoop():NSRunLoop;
	@:native("mainRunLoop")
	overload public static function mainRunLoop():NSRunLoop;
	@:native("currentMode")
	public var currentMode:Dynamic;
	@:native("getCFRunLoop")
	overload public function getCFRunLoop():Dynamic;
	// @:native("addTimer:forMode")
	// overload public function addTimerForMode(timer:NSTimer, forMode:Dynamic):Void;
	// @:native("addPort:forMode")
	// overload public function addPortForMode(aPort:NSPort, forMode:Dynamic):Void;
	// @:native("removePort:forMode")
	// overload public function removePortForMode(aPort:NSPort, forMode:Dynamic):Void;
	// @:native("limitDateForMode")
	// overload public function limitDateForMode(mode:Dynamic):NSDate;
	// @:native("acceptInputForMode:beforeDate")
	// overload public function acceptInputForModeBeforeDate(mode:Dynamic, beforeDate:NSDate):Void;
	@:native("run")
	overload public function run():Void;
	@:native("runUntilDate")
	overload public function runUntilDate(limitDate:NSDate):Void;
	// @:native("runMode:beforeDate")
	// overload public function runModeBeforeDate(mode:Dynamic, beforeDate:NSDate):Bool;
	// @:native("performInModes:block")
	// overload public function performInModesBlock(modes:NSArray, block:Dynamic):Void;
	// @:native("performBlock")
	// overload public function performBlock(block:Dynamic):Void;
	// @:native("performSelector:target:argument:order:modes")
	// overload public function performSelectorTargetArgumentOrderModes(aSelector:String, target:Dynamic, argument:Dynamic, order:Int, modes:NSArray):Void;
	// @:native("cancelPerformSelector:target:argument")
	// overload public function cancelPerformSelectorTargetArgument(aSelector:String, target:Dynamic, argument:Dynamic):Void;
	// @:native("cancelPerformSelectorsWithTarget")
	// overload public function cancelPerformSelectorsWithTarget(target:Dynamic):Void;
}


class HttpRequestApple {
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
        var url = NSURL.URLWithString(options.url + query);
        var request = NSMutableURLRequest.requestWithURL(url);

        switch (options.method) {
            case GET:
                request.HTTPMethod = "GET";
            case POST:
                request.HTTPMethod = "POST";
            case PUT:
                request.HTTPMethod = "PUT";
            case DELETE:
                request.HTTPMethod = "DELETE";
            case PATCH:
                request.HTTPMethod = "PATCH";
            case HEAD:
                request.HTTPMethod = "HEAD";
            case OPTIONS:
                request.HTTPMethod = "OPTIONS";
        }
        var session = NSURLSession.sharedSession();
        if (options.body != null) {
            request.HTTPBody = NSData.fromBytes(options.body);
        }
		if (options.headers != null) {
			for (name in options.headers.keys()) {
				request.setValueForHTTPHeaderField(options.headers[name], name);
			}
		}
		var didStartRunLoop = false;
		var currentRunLoop = NSRunLoop.currentRunLoop();
        var task = session.dataTaskWithRequestCompletionHandler(request,
            Objc.NSData_NSURLResponse_NSError(function(data:NSData, urlResponse:NSURLResponse, err:NSError) {
                var httpResponse:NSHTTPURLResponse = cast urlResponse;
                var status = httpResponse.statusCode;
                var bytes = data.toBytes();
                var response = new Response();
                response.statusCode = status;
                response.data = bytes;
				var errorDescription = err.localizedDescription;
                response.errorMessage = errorDescription.toString();
				options.onDone(response);
				if (didStartRunLoop) {
					var loop = currentRunLoop;
					untyped __cpp__('CFRunLoopRef cfLoop = [loop getCFRunLoop]');
					untyped __cpp__('CFRunLoopStop(cfLoop)');
				}
            }));
        task.resume();

		if (currentRunLoop.currentMode == null) {
			didStartRunLoop = true;
			currentRunLoop.runUntilDate(NSDate.dateWithTimeIntervalSinceNow(5));
		}
    }

    // // public static function AppendQueryParamsToUrl(urlString, params:Map<String, String>):String {

    // // }

    // public static function Get(options:GetOptions) {
	// 	var req = new haxe.Http(options.url);
	// 	var responseBytes = new haxe.io.BytesOutput();
    //     var responseStatus:Int = 0;

	// 	req.onError = function(error:String) {
    //         options.onError(error);
	// 	};

	// 	// Http#onData() is not called with custom requests like PUT

	// 	req.onStatus = function(status:Int) {
	// 		// For development, you may not need to set Http#onStatus unless you are watching for specific status codes
    //         responseStatus = status;

	// 	};

	// 	// Http#request is only for POST and GET
	// 	// req.request(true);

    //     var method = "GET";
	// 	req.customRequest(true, responseBytes, method);

    //     // req.request();

	// 	var response = responseBytes.getBytes();
    //     trace(response);
    // }

    // public static function Post(options:PostOptions) {

    // }
}
