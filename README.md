# Rails on Kubernetes starter application

To run Ruby on Rails on Kubernetes in the fastest way.

This application is published as a sample when posting a guide at [Qiita](https://qiita.com/).

# Requirements

Basically, it works in any environment, but I recommend running on minikube for the simplest. It's easy to install [minikube](https://github.com/kubernetes/minikube). if you use Homebrew, just execute following command.

`$ brew cask install minikube`

If you are not using Mac or Homebrew, please check the link above in detail.

# Commands for running on k8s

First, You must start minikube.

`$ minikube start`

And please enable ingress addon.

`$ minikube addons enable ingress`

Then apply the k8s configuration files in this project.

```bash
$ kubectl apply -f kube/namespace
$ kubectl apply -f kube/config
$ kubectl apply -f kube/volumes
$ kubectl apply -f kube/settings
```

It's all done with these four commands. Rails will be running on your minikube after a while. (It takes time to pull containers for at first time.)

Only using 6 configuration files. Kubernetes is powerful, but we can start like this simply.
