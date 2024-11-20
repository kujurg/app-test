
{{- define "webapp_chart.name" -}}
{{ .Chart.Name | default "webapp" }}
{{- end }}

{{- define "webapp_chart.fullname" -}}
{{ .Release.Name }}-{{ include "webapp_chart.name" . }}
{{- end }}
