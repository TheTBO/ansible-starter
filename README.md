# Ansible playbook + Dockerfile

Getting started with Ansible and using to set up a development environment in a docker image.

## Introduction

### YAML

YAML is a data driven markup language, in one of it's styles it looks quite similar to JSON using `{}` for dictionaries and `[]` for arrays.
By default, an array is represented with `-` and a space before each element. And dictionaries are just a `[Key: Value]` pairs.

#### Arrays

```yaml
- earth
- mars
- venus
```

Or

```yaml
[earth, mars, venus]
```

#### Dictionaries

```yaml
earth:
  color: blue
  shape: marble
```

Or

```yaml
earth: { color: blue, shape: marble }
```

### Ansible

Ansible tasks can either be run ad hoc from the command line or using a playbook.
Hosts can be specified in the playbook, but preferable to use Ansible inventory.

#### Simple playbook

A playbook needs a list or lookup pattern of hosts to be run on.
It is optional (but highly recommended) to add a name to every task or block.

```ansible
- name: Some Awsome Play
    hosts: all

    tasks:
        - ansible.builtin.package:
            name: bash

- name: Another Awsome play
    hosts: green

    tasks:
        - ansible.builtin.git:
            repo: https://example.com/myAwsomeRepo.git
```

## Requirements

- docker (with buildx module)

## build

```bash
docker buildx build .
```

## run

You can use docker run to create a container:

```bash
docker run -it [IMAGE_ID]
```

To delete the container after exiting:

```bash
docker run -it --rm [IMAGE_ID]
```

## References

- Ansible Documentations: <https://docs.ansible.com/ansible/latest/index.html>
- Dockerfile: <https://docs.docker.com/engine/reference/builder/>
- YAML syntax reference: <https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html>
