#!/bin/bash
cd `dirname $0`
sfctl application upload --path Luup --show-progress
sfctl application provision --application-type-build-path Luup
sfctl application upgrade --app-id fabric:/Luup --app-version $1 --parameters "{}" --mode Monitored
cd -