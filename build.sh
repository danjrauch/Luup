#!/bin/bash
DIR=`dirname $0`
source $DIR/dotnet-include.sh

dotnet restore $DIR/../Luup/src/Luup/LuupServer/LuupServer.csproj -s https://api.nuget.org/v3/index.json
dotnet build $DIR/../Luup/src/Luup/LuupServer/LuupServer.csproj -v normal

cd `dirname $DIR/../Luup/src/Luup/LuupServer/LuupServer.csproj`
dotnet publish -o ../../../../Luup/Luup/LuupServerPkg/Code
cd -
