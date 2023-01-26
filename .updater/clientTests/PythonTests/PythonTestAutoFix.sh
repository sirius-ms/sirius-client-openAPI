#! /bin/bash

cp ./test/test_*.py ./../../../client-api_python/generated/test --force
echo "omitting directory ./test/models is expected!"
cp ./test/models/test_*.py ./../../../client-api_python/generated/test --force
echo "Done!"
