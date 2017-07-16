# Deploying Wordpress w/ Docker and Ansible

## Prerequisites:

  - vagrant
  - ec2

## Quickstart

```
$ make
```

  - Creates a vagrant box using `Vagrantfile`.
  - Provisions vagrantbox using Ansible as a Docker host.
  - Deploys a Wordpress service, consisting of:
    - Wordpress application:
      - Uses official WP Docker image
      - `wp-content` bind-mounted to a directory on the host
    - MySQL server:
      - Uses official MySQL image
      - data dir bind-mounted to a directory on the host
    - Once deployed, use Wordpress on http://localhost:8081

Ansible's `docker` provisioner is used

# Notes

### TODO

  - deploy WP with `fpm` instead of Apache
  - better hardening of the Ubuntu system (`fail2ban`, etc)
  - pass secrets as environment variables or Ansible secrets
  - do an apt-check on docker repo's key
  - actually set mysql db password
  - parametrize version of MySQL image
  - skip dbsetup if not needed
  - persist `wp-content` on host filesystem. Maybe copy out of the image first?
  - increase density by running multiple WP+MySQL stacks and putting Nginx in front to route traffic based on hostname
