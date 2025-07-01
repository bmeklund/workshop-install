#!/bin/sh
oc get secret htpasswd -ojsonpath={.data.htpasswd} -n openshift-config | base64 --decode | grep -e admin -e karla > users.htpasswd
curl https://raw.githubusercontent.com/bmeklund/workshop-install/main/workshop-base/users-base/htpasswd/htpasswd >> users.htpasswd
oc create secret generic htpasswd --from-file=htpasswd=users.htpasswd --dry-run=client -o yaml -n openshift-config | oc replace -f -
rm users.htpasswd
