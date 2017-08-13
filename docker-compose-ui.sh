docker run --name docker-compose-ui \
-p 5000:5000 \
-w /home/zamboli/Documents/docker-tranning/ \
-v /var/run/docker.sock:/var/run/docker.sock \
francescou/docker-compose-ui
