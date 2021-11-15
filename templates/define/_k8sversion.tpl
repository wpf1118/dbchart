{{- define "k8sVersion" -}}
{{- if .Values.cluster.k8sVersion-}}
{{- .Values.cluster.k8sVersion -}}
{{- else -}}
{{- default .Capbilities.KubeVersion.Version print "v1.20.0"-}}
{{- end -}}
{{- end -}}
