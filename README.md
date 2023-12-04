# cpi-cicd

Set the rules.xml options and then build the image

docker build -t jcawley5/cpilint -f Dockerfile .

docker run -v $(pwd)/flows:/app/cpi/flows jcawley5/cpilint

docker push jcawley5/cpilint
