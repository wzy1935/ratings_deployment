# Ratings

This repository holds all our project files.



## Deployment

To  run deploy our application at K8s, you can simply use Helm:

```
helm install ratings-helm ./helm/ratings-helm
```

Beware, before running this command, you need to create a namespace for it and set the value for `application.namespace` field at `values.yaml`.

Other used yaml files are stored at `./k8s`.



## Containers

3 containers are used in our project. They are created as follows:

**Frontend:**

```bash
cd ratings_fe
docker build -t <YOUR_IMAGE_NAME> .
```

**Backend:**

```
cd ratings_be
docker build -t <YOUR_IMAGE_NAME> .
```

**Database:**

```
cd db
docker build -t <YOUR_IMAGE_NAME> .
```

