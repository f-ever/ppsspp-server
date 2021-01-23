# PPSSPP Remote Disc Streaming Server

```
docker build -t fever/ppsspp-server ./
docker run -d --restart=always --name=ppsspp-server -p 25555:80 -v /game/PSP:/roms fever/ppsspp-server
```
