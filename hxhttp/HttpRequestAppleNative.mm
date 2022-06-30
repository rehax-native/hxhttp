#import <Foundation/Foundation.h>
#include "HttpRequestAppleNative.h"

void hxhttp::HttpRequestAppleNative::request(
    std::string url,
    std::string method,
    std::unordered_map<std::string, std::string> requestHeaders,
    void * data,
    size_t dataSize,
    std::function<void (std::string errorMessage, int status, std::unordered_map<std::string, std::string> responseHeaders, void * data, size_t dataSize)> callback
)
{

    @autoreleasepool {
        NSString *nsUrl = [NSString stringWithUTF8String:url.c_str()];
        NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:nsUrl]];
        NSString *nsMethod = [NSString stringWithUTF8String:method.c_str()];
        request.HTTPMethod = nsMethod;
        if (data != nullptr && dataSize > 0) {
            NSData *nsData = [NSData dataWithBytes:data length:dataSize];
            // NSLog(@"%@", nsData);
            // NSLog(@"%@", [NSString stringWithUTF8String:(const char*) data]);
            request.HTTPBody = nsData;
        }

        for (const auto & [key, value] : requestHeaders) {
            NSString *nsKey = [NSString stringWithUTF8String:key.c_str()];
            NSString *nsValue = [NSString stringWithUTF8String:value.c_str()];
            [request setValue:nsValue forHTTPHeaderField:nsKey];
        }

        NSURLSession * session = [NSURLSession sharedSession];
        NSRunLoop * currentRunLoop = [NSRunLoop currentRunLoop];

        NSURLSessionDataTask * task = [session dataTaskWithRequest: request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            if (error) {
                // NSLog(@"Error: %@", error);
                callback([[error localizedDescription] UTF8String], 0, {}, nullptr, 0);
            } else {

                NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                int status = [httpResponse statusCode];

                NSUInteger len = [data length];
                void *typedData = nullptr;
                if (len > 0) {
                    typedData = malloc(len);
                    memcpy(typedData, [data bytes], len);
                }

                callback("", status, {}, typedData, len);
            }
        }];
        [task resume];

        if ([currentRunLoop currentMode] == nullptr) {
            [currentRunLoop runUntilDate:[NSDate dateWithTimeIntervalSinceNow:5]];
        }
    }
}

void hxhttp::HttpRequestAppleNative::releaseData(void * data)
{
    free(data);
}
