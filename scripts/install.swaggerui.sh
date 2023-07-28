#!/bin/sh
SWAGGER_UI_VERSION=5.2.0
cd ..
rm -rf ./api
rm -rf swagger-ui-*/
rm -rf swagger-ui-*.zip
wget https://github.com/swagger-api/swagger-ui/archive/refs/tags/v$SWAGGER_UI_VERSION.zip -O swagger-ui-$SWAGGER_UI_VERSION.zip
unzip swagger-ui-$SWAGGER_UI_VERSION.zip
rm swagger-ui-$SWAGGER_UI_VERSION.zip
mv ./swagger-ui-$SWAGGER_UI_VERSION/dist/ ./api/
rm -rf swagger-ui-*/
rm -rf swagger-ui-*.zip
pushd api
rm -f ./favicon-*.png
rm -f ./swagger-ui-es-bundle*
sed -i '' 's/https\:\/\/petstore\.swagger\.io\/v2/\/api/g' './swagger-initializer.js'
cp ../../api/definition/swagger.json ./swagger.json
popd