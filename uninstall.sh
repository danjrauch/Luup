#!/bin/bash -x

sfctl application delete --application-id Luup
sfctl application unprovision --application-type-name LuupType --application-type-version 1.0.0
sfctl store delete --content-path Luup