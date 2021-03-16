#sudo docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db mongo:latest
#sudo docker run -d --network=reddit --network-alias=post 387850151190qqq/post:1.0
#sudo docker run -d --network=reddit --network-alias=comment 387850151190qqq/comment:1.0
#sudo docker run -d --network=reddit -p 9292:9292 387850151190qqq/ui:1.0

sudo docker run -d --network=front_net -p 9292:9292 --name ui 387850151190qqq/ui:1.0
sudo docker run -d --network=back_net --name comment 387850151190qqq/comment:1.0
sudo docker run -d --network=back_net --name post 387850151190qqq/post:1.0
sudo docker run -d --network=back_net --name mongo_db --network-alias=post_db --network-alias=comment_db mongo:latest

#Подключим контейнеры ко второй сети
sudo docker network connect front_net post
sudo docker network connect front_net comment

sudo docker network create back_net --subnet=10.0.2.0/24
sudo docker network create front_net --subnet=10.0.1.0/24

