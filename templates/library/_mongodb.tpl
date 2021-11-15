{{/*
Mongodb Endpoints
*/}}
{{- define "mongodb.name" -}}
{{- print "mongodb" -}}
{{- end -}}

{{- define "mongodb.host" -}}
{{- template "mongodb.name" . -}}
{{- end -}}

{{- define "mongodb.port" -}}
{{- printf "%s" "27017" -}}
{{- end -}}

{{- define "mongodb.username" -}}
{{- printf "%s" "admin" -}}
{{- end -}}

{{- define "mongodb.password" -}}
{{- printf "%s" "Arksec12345" -}}
{{- end -}}

{{- define "mongodb.image" -}}
{{ include "image.name" (dict "imageRoot" .Values.mongodb.image "registry" .Values.registry) }}
{{- end -}}

{{- define "mongodb.migrate.image" -}}
{{ include "image.name" (dict "imageRoot" .Values.mongodb.registry.image "registry" .Values.registry) }}
{{- end -}}