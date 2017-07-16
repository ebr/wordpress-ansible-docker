# Deploying Wordpress w/ Docker and Ansible

## Prerequisites

  - vagrant
  - ansible

## Quickstart

```
$ make
```

  - Creates a vagrant box using `Vagrantfile`
  - Provisions vagrantbox using Ansible as a Docker host
  - Deploys a Wordpress service, consisting of:
    - Wordpress application:
      - Uses official WP Docker image
    - MySQL server:
      - Uses official MySQL image
      - data dir is mapped to a volume on the Vagrant host - this way data is kept if the stack is destroyed.

Once deployed, Wordpress is available at [http://localhost:8081](). You may need to wait 30 seconds for the services to start.

Makes use of Ansible's `docker_container` and `docker_service` modules.

Once done: `make clean`.


## Other ways to run

Simple `vagrant up` will use Vagrant's own Ansible provisioner. This is really the sane way anyone would do this. Quickstart above chooses the hard way by connecting to `vagrant` over SSH.

To run in EC2:

  - Assuming ec2 instance is running, accessible on port 22/SSH, and public key authentication works
  - edit `hosts` and replace `EC2_HOST` with the IP address or DNS name of your EC2 instance
  - `make ec2`


# TODO

  - deploy WP with `fpm` instead of Apache
  - better hardening of the Ubuntu system (`fail2ban`, etc)
  - pass secrets as environment variables or Ansible secrets
  - do an apt-check on docker repo's key
  - actually set mysql db password
  - parametrize version of MySQL image
  - skip dbsetup if not needed
  - persist `wp-content` on host filesystem. Maybe copy out of the image first?
  - increase density by running multiple WP+MySQL stacks and putting Nginx in front to route traffic based on `Host:` header
  - use better volume driver than `aufs` (or better yet switch to Ubuntu 16.04)
