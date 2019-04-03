# docker-fastnetmon

docker run \
  --name fastnetmon \
  --detach \
  --privileged \
  --net host \
  --volume /etc/localtime:/etc/localtime:ro \
  --volume fastnetmon:/fastnetmon \
  alexanderfefelov/fastnetmon
