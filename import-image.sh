REGISTRY_SATELLITE=$1

# importar as imagens para o namespace
oc import-image openshift-migration-rsync-transfer-rhel8:v1.5.1-3 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-rsync-transfer-rhel8:v1.5.1-3 --confirm -n openshift-migration
oc import-image openshift-migration-hook-runner-rhel7:v1.5.1-3 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-hook-runner-rhel7:v1.5.1-3 --confirm -n openshift-migration
oc import-image openshift-migration-controller-rhel8:v1.5.1-4 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-controller-rhel8:v1.5.1-4 --confirm -n openshift-migration
oc import-image openshift-migration-ui-rhel8:v1.5.1-4 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-ui-rhel8:v1.5.1-4 --confirm -n openshift-migration
oc import-image openshift-migration-log-reader-rhel8:v1.5.1-3 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-log-reader-rhel8:v1.5.1-3 --confirm -n openshift-migration
oc import-image openshift-migration-registry-rhel8:v1.5.1-4 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-registry-rhel8:v1.5.1-4 --confirm -n openshift-migration
oc import-image openshift-migration-velero-rhel8:v1.5.1-4 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-velero-rhel8:v1.5.1-4 --confirm -n openshift-migration
oc import-image openshift-velero-plugin-rhel8:v1.5.1-4 --from=$REGISTRY_SATELLITE/rhmtc/openshift-velero-plugin-rhel8:v1.5.1-4 --confirm -n openshift-migration
oc import-image openshift-migration-velero-restic-restore-helper-rhel8:v1.5.1-4 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-velero-restic-restore-helper-rhel8:v1.5.1-4 --confirm -n openshift-migration
oc import-image openshift-migration-velero-plugin-for-aws-rhel8:v1.5.1-5 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-velero-plugin-for-aws-rhel8:v1.5.1-5 --confirm -n openshift-migration
oc import-image openshift-migration-velero-plugin-for-gcp-rhel8:v1.5.1-7 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-velero-plugin-for-gcp-rhel8:v1.5.1-7 --confirm -n openshift-migration
oc import-image openshift-migration-velero-plugin-for-microsoft-azure-rhel8:v1.5.1-4 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-velero-plugin-for-microsoft-azure-rhel8:v1.5.1-4 --confirm -n openshift-migration
oc import-image openshift-migration-legacy-rhel8-operator:v1.5.1-13 --from=$REGISTRY_SATELLITE/rhmtc/openshift-migration-legacy-rhel8-operator:v1.5.1-13 --confirm -n openshift-migration