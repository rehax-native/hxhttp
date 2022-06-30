mkdir -p build/out

cp hxhttp/HttpRequestAppleNative.h build/out/HttpRequestAppleNative.h
cp build/hxhttp.a build/out/hxhttp-mac.a

rm build/hxhttp-mac.zip
zip -r -j build/hxhttp-mac.zip build/out

version=$(cat haxelib.json | jq -r '.version')
description=$(cat haxelib.json | jq -r '.releasenote')

echo $version
echo $description

gh release view v$version --json url
if [ $? = 1 ]
then
    echo 'Creating Release'
    gh release create v$version -n "$description"
fi

read -p "Upload release now? y/n" -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo
    echo 'Uploading release'
    gh release upload v$version build/hxhttp-mac.zip --clobber
fi
