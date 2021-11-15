{{- define "db.labels" -}}
{{ printf "%s:%s" "db/name" .label}}
{{- end -}}
