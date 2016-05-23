docker build -t mount/tes:v42 .
mkdir /Users/Shared/dock
docker run  -it -v /Users/Shared/dock:/dock mount/tes:v42
