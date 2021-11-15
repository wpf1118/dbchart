{{- define "apiVersion.sts" -}}
{{- if semverCompare "<1.14-0" (include "k8sVersion" .) -}}
{{- print "extensions/v1beta1" -}}
{{- else -}}
{{- print "apps/v1" -}}
{{- end -}}
{{- end -}}
