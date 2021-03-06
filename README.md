# Serverauditor ssh server farm

Repository with Docker containers with ssh servers.

## Supported authentication options:

- only identity file;
- only password;
- [authy](https://www.authy.com) and identity file;
- [authy](https://www.authy.com) and password.

## Run

To run ssh servers you'll demand on [Docker](https://www.docker.com)
and [docker-compose](https://pypi.python.org/pypi/docker-compose).

```bash
docker-compose up
```

## How to add more options

When you want to add new ssh server configuration follow step below:

- create new configuration directory with **meaningful** Name in repository root;
- add `Dockerfile` and to new configuration directory;
- add new service with the same configuration name to `docker-compose.yml`;
- use environment variable in `docker-compose.yml` where it's needed.
