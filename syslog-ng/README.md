## nacyot/syslog-ng Docker Image

This process collects logs by listening 514/udp port.

### Build

```
$ git clone https://github.com/nacyot/docker-logs.git
$ cd docker-log/syslog-ng
$ docker build -t nacyot/syslog-ng .
```

### Usage

```
$ docker run --name syslog-ng -d -p 514:514/udp -v $(pwd)/logs:/var/log/syslog-ng nacyot/syslog-ng
```

UDP log stream will be saved /var/log/syslog-ng/logs.txt. You can mount your own directory for saving your log by -v option.

### Test 

```
$ nc -u 0.0.0.0 514
<input> Hello, World!
^c
$ docker logs syslog-ng
...
Incoming log entry; line='Hello, World!\x0a'
...
```
