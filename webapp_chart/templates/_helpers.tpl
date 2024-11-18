
{{- define "webapp_chart.name" -}}
{{ .Chart.Name | default "webapp" }}
{{- end }}

{{- define "webapp_chart.fullname" -}}
{{ .Release.Name }}-{{ default "webapp_chart" . }}
{{- end }}
