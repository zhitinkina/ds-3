docker build -f backendapi.dockerfile -t api:%1 .
docker build -f lab2.dockerfile -t client:%1 .
docker build -f logger.dockerfile -t logger:%1 .

mkdir application%1

copy scripts\start.cmd application%1
copy scripts\stop.cmd application%1
copy config\config.cmd application%1