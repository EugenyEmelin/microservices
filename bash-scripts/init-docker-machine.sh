docker-machine create --driver google \
--google-project docker-307118 \
--google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-2004-lts \
--google-machine-type n1-standart-1 \
--google-zone europe-west1-b \
docker-host
