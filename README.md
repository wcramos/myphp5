wcramos/myphp5
==========

![docker_logo](https://raw.githubusercontent.com/wcramos/myphp5/master/docker_139x115.png)

[![Docker Pulls](https://img.shields.io/docker/pulls/wcramos/lamp.svg?style=plastic)](https://hub.docker.com/r/wcramos/myphp5/)

This Docker container implements a stack with a set of popular PHP modules. 

Includes the following components:

 * Debian base image.
 * Apache HTTP Server 2.4
 * PHP 5.6
 * Development tools
	* curl

Installation from [Docker registry hub](https://registry.hub.docker.com/u/wcramos/myphp5/).
----

You can download the image using the following command:

```bash
docker pull wcramos/myphp5
```

Exposed port and volumes
----

The image exposes ports `8080` and `8443`, and exports tree volumes:

* `/var/log/apache2`, containing Apache log files.
* `/var/www/html`, used as Apache's [DocumentRoot directory](http://httpd.apache.org/docs/2.4/en/mod/core.html#documentroot).
* `/etc/apache2`, where Apache config files are stored. 

The user and group owner id for the DocumentRoot directory `/var/www/html` are both 2001. 

Use cases
----

#### Create a temporary container for testing purposes:

```
	docker run -i -t --rm wcramos/myphp5 bash
```

