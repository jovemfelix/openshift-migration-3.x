# Run Operator Migration on Openshift 3.x

1. Create the Namespace

   ```shell
   (
   cat <<EOF
   apiVersion: v1
   kind: Namespace
   metadata:
     annotations:
       openshift.io/node-selector: ""
     labels:
       control-plane: controller-manager
       controller-tools.k8s.io: "1.0"
       openshift.io/cluster-monitoring: "true"
     name: "openshift-migration"
   EOF
   ) | oc apply -f -
   ```

2. Get Secret to Import the Image Stream

   ```shell
   # create a secret that allows downloading the imagesa and do a cleanup
   
   ## using old yq (2.x)
   oc get secret imagestreamsecret -n openshift -o yaml | yq delete - metadata | yq w - metadata.name openshift-migration > imagestreamsecret.yaml
   
   ## using new yq (3.x)
   oc get secret imagestreamsecret -n openshift -o yaml | yq eval 'del(.metadata)' - > imagestreamsecret.yaml
   
   oc apply -f imagestreamsecret.yaml -n openshift-migration
   ```

3. Import all images required

   ```shell
   # adjust the value bellow!
   REGISTRY_SATELLITE=registry.redhat.io
   sh import-image.sh $REGISTRY_SATELLITE
   ```

4. Create the resources

   ```shell
   oc create -f operator.yml
   oc create -f controller.yml
   ```

# Authors

* [Adriano Machado](https://github.com/ammachado)
* [Renato Felix](https://github.com/jovemfelix)

# Reference

* https://access.redhat.com/documentation/en-us/openshift_container_platform/4.8/html-single/migration_toolkit_for_containers/index#migration-compatibility-guidelines_installing-mtc-restricted 