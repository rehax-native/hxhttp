mkdir -p build
pushd build

clang++ \
    -c \
    -Wall \
    -std=c++17 \
    -target x86_64-apple-macos10.9 \
    -o lib.o \
    -I ../hxhttp \
    ../hxhttp/HttpRequestAppleNative.mm && \
ar \
    rc hxhttp-x86_64.a \
    lib.o

clang++ \
    -c \
    -Wall \
    -std=c++17 \
    -target arm64-apple-macos11 \
    -o lib.o \
    -I ../hxhttp \
    ../hxhttp/HttpRequestAppleNative.mm && \
ar \
    rc hxhttp-arm64.a \
    lib.o

lipo -create -output hxhttp.a hxhttp-x86_64.a hxhttp-arm64.a

popd