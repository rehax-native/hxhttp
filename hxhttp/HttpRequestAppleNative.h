#include <iostream>
#include <unordered_map>

namespace hxhttp {

class HttpRequestAppleNative {
    public:
    static void request(
        std::string url,
        std::string method,
        std::unordered_map<std::string, std::string> requestHeaders,
        void * data,
        size_t dataSize,
        std::function<void (std::string errorMessage, int status, std::unordered_map<std::string, std::string> responseHeaders, void * data, size_t dataSize)> callback
    );

    static void releaseData(void * data);
};

}
