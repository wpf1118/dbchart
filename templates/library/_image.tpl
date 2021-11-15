{{- define "image.name" -}}
{{- $url := .registry.url -}}
{{- $project := .registry.project -}}
{{- $tag := .registry.tag | toString -}}
{{- $repository := .imageRoot.repository -}}

{{- if .imageRoot.url}}
    {{- $url = .imageRoot.url -}}
{{- end -}}
{{- if .imageRoot.project }}
    {{- $project = .imageRoot.project -}}
{{- end -}}
{{- if .imageRoot.tag }}
    {{- $tag = .imageRoot.tag | toString -}}
{{- end -}}

{{- if $url}}
{{- printf "%s/%s/%s:%s" $url $project $repository $tag -}}
{{- else -}}
{{- printf "%s/%s:%s" $project $repository $tag -}}
{{- end -}}
{{- end -}}
