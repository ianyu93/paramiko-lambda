rm -rf layer
docker build -t paramiko-layer .
CONTAINER=$(docker run -d paramiko-layer false)
docker cp $CONTAINER:/opt build
docker rm $CONTAINER -f
touch build/.slsignore
cat > build/.slsignore << EOF
**/*.a
**/*.la
share/**
include/**
bin/**
EOF