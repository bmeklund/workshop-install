
# Preparing cluster for workshop users

## To set up and configure a set of users with easy password

Depending on if the cluster is a new cluster without any other users besides cluster-admin(admin) the script provided in this folder could be used to configure a set of users with password: openshift - for convenience sake. The script lifts out the admin user with it's password and then recreates the htpasswd secret with that admin and 50 users with password openshift.  

Otherwise manual configuration of this could be done. 

## If OAuth is not set up on cluster, apply this before running the users-htpassw
### 
```
apiVersion: config.openshift.io/v1
kind: OAuth
metadata:
  name: cluster
spec:
  identityProviders:
  - name: htpasswd_provider 
    mappingMethod: claim 
    type: HTPasswd
    htpasswd:
      fileData:
        name: htpasswd
```