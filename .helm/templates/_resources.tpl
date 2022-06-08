{{ define "pod_resources" }}
resources:
  requests:
    memory: {{ first (pluck .global.env .requests.memory) | default .requests.memory._default | required "Отсутствует значение" | quote }}
    cpu: {{ first (pluck .global.env .requests.cpu) | default .requests.cpu._default | required "Отсутствует значение" | quote }}
  limits:
    memory: {{ first (pluck .global.env .limits.memory) | default .limits.memory._default | required "Отсутствует значение" | quote }}
    cpu: {{ first (pluck .global.env .limits.cpu) | default .limits.cpu._default | required "Отсутствует значение" | quote }}
{{ end }}

