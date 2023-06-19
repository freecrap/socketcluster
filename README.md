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

# In production

This image is used in production at [White label sportsbook](https://www.whitelabelsportsbook.net) and [Turnkey sportsbook software](https://www.turnkey-sportsbook-software.com) on a number of high-performance sports, casino and e-gaming websites. Socketcluster is a solid alternative to every other realtime library and ideal to broadcast thousands of updates to streaming sports market data from the server side to sports website clients as it comes with a small resource footprint and successfully handles several thousand updates to volatile sports market data per second.
