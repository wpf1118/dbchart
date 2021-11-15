{{- define "db.labels" -}}
db/name: .label
app.kubernetes.io/version: {{- default .Chart.AppVersion " " | trunc 63 | trimSuffix "-" -}}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
