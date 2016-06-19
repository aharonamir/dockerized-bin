## dockerized-bin
Building docker images for bin files with minimal image size (no apt-get)

This script takes 2 parameters: 
- the bin file (e.g ./bin/HelloDocker)
- the image name to build

and create a temp directory with all the bin file dependencies,
so you don't need to run any 'apt-get install' in the Dockerfile
Thus, keeping the image as small as possible
 
The script assumes the Dockerfile is in the same folder.
I've included a minimal Dockerfile<br>
Enjoy (;-)
