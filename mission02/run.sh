cp ~/.ssh/id_rsa.pub .
docker build -t ssh/tes:v42 .
rm id_rsa.pub
docker run -d -t -p 42:42 ssh/tes:v42
