# Ansible playbook + Dockerfile

Getting started with Ansible and using to set up a development environment in a docker image.

## requirements

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

## Referances

- [Ansible Documentations](https://docs.ansible.com/ansible/latest/index.html)
- [Dockerfile](https://docs.docker.com/engine/reference/builder/)
