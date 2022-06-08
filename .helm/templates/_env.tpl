{{ define "app_env" }}
{{- range $name, $value := .Values.env }}
- name: {{ $name }}
  value: {{ pluck $.Values.global.git_branch $value | first | default $value._default | quote }}
{{- end }}
{{ end }}
