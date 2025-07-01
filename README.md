# workshopinstall

1. Install the OpenShift GitOps Operator

```
oc apply -f https://raw.githubusercontent.com/bmeklund/workshop-install/refs/heads/main/add-openshift-gitops.yaml

```

2. Install the workshop infra components

```
oc apply -f https://raw.githubusercontent.com/bmeklund/workshop-install/refs/heads/main/argocd/workshop-infra.yaml

```

3. Configure Nexus instance

```
oc apply -f https://raw.githubusercontent.com/bmeklund/workshop-install/refs/heads/main/workshop-base/post-work/nexus-init-job.yaml

```

# coming features

## progressive sync

enable on argocd instance by adding this to the applicationSet controller in the argocd kind

```
applicationSet:
   argocdCommandParameters:
      - --enable-progressive-sync
```