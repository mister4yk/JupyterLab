# JupyterLab
__Prebuild__<br>
* add ubuntu packages to [Dockerfile(6th line)](Dockerfile)
* add pip requirements to [conf/requirements.txt](conf/requirements.txt)</br>

__Build__<br>
Run [./build.sh](build.sh)</br>

__Configure__<br>
Edit [docker-compose.yml](docker-compose.yml)</br>

__Run__<br>
Run [./run.sh](run.sh)</br>
Open in browser SERVER_IP:8888/lab?token=TOKEN_FROM_ECHO
