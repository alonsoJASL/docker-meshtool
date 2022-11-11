# README 

Call meshtool from docker. You need to have docker installed. 

## Quick start 
Download this script to a folder, for example `/path/to/software`
```shell 
cd /path/to/software 
git clone https://github.com/alonsoJASL/docker-meshtool.git 
```
Now, link script to your `/usr/local/bin` folder, so you can use it 
anywhere: 
```shell
sudo ln -s /path/to/software/docker-meshtool/docker-meshtool.sh /usr/local/bin/docker-meshtool 
```

Once you finish, run script the following way: 
``` shell
docker-meshtool /path/to/data COMMAND [OPTIONS] [PARAMETERS]
```

