Paramsfile
==========

Dynamically generate configuration files with YAML and Mustache

Usage
-----

Create a template

```mustache
# ./nginx.conf.mustache

server {
  server_name {{ app_domain }};
}
```

Create a parameters file

```yaml
# ./parameters.yml

sprocketcorp:
  app_domain: www.sprocketcorp.com
```

Generate the config file

```sh
$ ./bin/paramsfile nginx.conf.mustache
```
