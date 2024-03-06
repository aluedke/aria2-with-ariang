Aria2 with webui for unRaid
---
Only 11Mb. Inspired by XUJINKAI.  

Edit config file out of the image.  
Move file completed to another folder.  
(Tasks that contains more than one files will not be moved.)  

### Install
I. replace **/DOWNLOAD_DIR** and **/CONFIG_DIR** for save data, and **YOUR_SECRET_CODE** for security. Run command below  
```
sudo docker run -d \
--name aria2-with-ariang \
-p 6800:6800 \
-p 8989:8989 \
-v /CONFIG_DIR:/config \
-v /DOWNLOAD_DIR:=/download \
-e SECRET=YOUR_SECRET_CODE \
aluedke/aria2-with-ariang:latest
```
  
II. Open `http://serverip:8989/` for aria2-webui.  

### Build:  
`sudo docker build -f Dockerfile -t kingedgar/aria2-with-ariang:latest`  

### Link:  
https://github.com/aria2/aria2  
https://github.com/ziahamza/webui-aria2  

https://github.com/acgotaku/BaiduExporter  
