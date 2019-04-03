# docker-fastnetmon

## Что это?

docker-fastnetmon -- это система обнаружения DDoS-атак [FastNetMon](https://github.com/pavel-odintsov/fastnetmon) в Docker-контейнере.

## Как это запустить?

Для запуска контейнера выполните команду

```bash
docker run \
  --name fastnetmon \
  --detach \
  --privileged \
  --net host \
  --volume /etc/localtime:/etc/localtime:ro \
  --volume fastnetmon:/fastnetmon \
  alexanderfefelov/fastnetmon
```

## Как остановить/запустить/перезапустить контейнер?

Для управления контейнером используйте команды

    docker stop fastnetmon
    docker start fastnetmon
    docker restart fastnetmon

## Как запустить клиента FastNetMon?

Для запуска клиента воспользуйтесь командой

    docker exec --tty --interactive fastnetmon /opt/fastnetmon/fastnetmon_client

## Где мои данные?

Конфигурационные файлы, скрипты и журнал FastNetMon хранятся в Docker-томе,
путь к которому можно узнать с помощью команды

    docker volume inspect --format '{{.Mountpoint}}' fastnetmon

## Как это удалить?

Удалите контейнер

    docker rm --force fastnetmon

Удалите образ

    docker image rm alexanderfefelov/fastnetmon

:fire: Удалите данные

    docker volume rm fastnetmon
