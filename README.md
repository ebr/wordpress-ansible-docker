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
   - Wordpress application
     - Using official WP Docker image
     - `wp-content` bind-mounted to a directory on the host
   - MySQL server
     - Using official MySQL image
     - data dir bind-mounted to a directory on the host
   - Once deployed, server is available on http://localhost:8081
