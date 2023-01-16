#! /bin/bash

rm ./../../../client-api_python/generated/test/*
cp ./test/test_*.py ./../../../client-api_python/generated/test
echo "omitting directory ./test/models is expected!"
cp ./test/models/test_*.py ./../../../client-api_python/generated/test
echo "Done!"
