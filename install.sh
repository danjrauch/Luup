#!/bin/bash
uninstall () {
    echo "Uninstalling App as installation failed... Please try installation again."
    ./uninstall.sh
    exit
}

cd `dirname $0`
sfctl application upload --path Luup --show-progress
if [ $? -ne 0 ]; then
  uninstall
fi

sfctl application provision --application-type-build-path Luup
if [ $? -ne 0 ]; then
  uninstall
fi

sfctl application create --app-name fabric:/Luup --app-type LuupType --app-version 1.0.0
if [ $? -ne 0 ]; then
  uninstall
fi

cd -