# Build

This repository can be used to create builds for InfluxData's TICK
stack.

## Running

There are three ways to get up and running.

### Docker

To generate build through Docker, you can use the included
`Dockerfile*` files, which are broken out by the different Go versions
that are installed:

```
# Build the images
./docker-build.sh

# Build InfluxDB
./docker-run-go14.sh -e @influxdb.yml build.yml
```

### Vagrant

To generate build through Vagrant, you can use the included
`Vagrantfile`, which contains `provision` steps that can be used to
generate builds:

```
vagrant up           # to spin up the build instance
vagrant provision    # to re-run the build steps
```

### Bare Metal

To run on any random instance, you can just use Ansible directly. For
example, to build InfluxDB on your local instance:

```
ansible-playbook -c local -i dummy-inventory -e @influx.yml build.yml
```

