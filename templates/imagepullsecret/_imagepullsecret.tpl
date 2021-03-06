{{- define "imagePullSecret.name" -}}
  {{- print "default-dockerconfigjson" -}}
{{- end -}}

{{- define "imagePullSecret.auth" }}
{{- with .Values.registry }}
{{- printf "{\"auths\":{\"%s\":{\"username\":\"%s\",\"password\":\"%s\",\"auth\":\"%s\"}}}" .url .user .password (printf "%s:%s" .user .password | b64enc) | b64enc }}
{{- end }}
{{- end }}

{{- define "imagePullSecret.dockerconfigjson" -}}
  - name: "{{- include "imagePullSecret.auth" . -}}"
{{- end -}}

