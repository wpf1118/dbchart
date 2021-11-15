```
export REDSTONE_CHART="db"
export REDSTONE_RELEASE="himalaya"
export REDSTONE_NAMESPACE="db"
```

```
helm install "${REDSTONE_RELEASE}" -n "${REDSTONE_NAMESPACE}" ./ \
--set cluster.imagePullPolicy=Always \
--set mongodb.persistence.enable=true
```