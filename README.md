novnc：将vnc代理为web访问，此为标准版本

```
networks:
  lan13:
    name: lan13
    driver: macvlan
    driver_opts:
      parent: eth1
    ipam:
      config:
        - subnet: "192.168.13.0/24"
          gateway: "192.168.13.1"
services:
  webvnc:
    container_name: "webvnc"
    hostname: "webvnc"
    image: "sleechengn/novnc:latest"
    restart: always
    environment:
      vnc: "192.168.13.150:5900"
    networks:
      lan13:
        ipv4_address: 192.168.13.57
```
