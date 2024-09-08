{{- define "sample-app.fullname" -}}
{{- .Release.Name | lower }}-{{ .Chart.Name | lower }}
{{- end }}
