# docker -- Container manager
{:data-section="gnfb"}

## EXAMPLES

`docker ps`
: Shows information about every running container, including its **id** and **name**

`docker cp foo.txt container_id:/foo.txt`
: Copies a file from the host to the container, using the container id

`docker rmi container_id`
: Removes an image with **container_id**
