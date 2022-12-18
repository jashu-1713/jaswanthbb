!/bin/bash

cd /root 
rm -rf docker ;
git clone https://github.com/jashu-1713/jaswanthbb.git ;
docker system prune -af ; 
cd /root/docker ; 
sh script.sh
docker build -t jashu/besant:myapache2 .
docker push jashu/besant:myapache2
docker rm -f mycontianer
docker system prune -af 
docker run -itd -p 80:80 --name mycontianer jashu/besant:myapache2
