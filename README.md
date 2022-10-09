# High available containers

* Build Docker image with:

```console
docker build --rm -t ruwd-ha-containers .
```

## Configuration

### Environment variables

- `POD_IP`: IP of a pod currently being used. ([An example of the implementation](https://kubernetes.io/docs/tasks/inject-data-application/environment-variable-expose-pod-information/)) Default: **No IP provided**
