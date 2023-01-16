#! /bin/bash

rm ./../../../client-api_python/generated/test/*
cp ./test/* ./../../../client-api_python/generated/test/test_*.py
echo "omitting directory ./test/models is expected!"
cp ./test/models/* ./../../../client-api_python/generated/test/test_*.py
echo "Done!"
