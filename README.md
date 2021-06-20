## Socketcluster

Customized socketcluster with SSL support

## Usage

Put your SSL certificates in a directory:
* ssl.key
* ssl.crt
* ssl.cabundle

And mount it as in the following docker-compose example:


```
socketcluster:
 build: ./socketcluster
 container_name: socketcluster
 hostname: socketcluster
 restart: "always"
 ports:
  - "9500:9500"
 environment:
  SOCKETCLUSTER_WORKERS: 3
  SOCKETCLUSTER_BROKERS: 1
  ENV: prod
  USE_SSL: 1
 volumes:
  - "./_persistence/socketcluster/logs:/logs"
  - "./_ssl:/ssl"
  ```
