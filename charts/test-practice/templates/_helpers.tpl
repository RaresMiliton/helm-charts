{{- define "secrets-volume" }}
{{- if .Values.secret.create  }}
      - name: ssh-key
        secret:
          secretName: ssh-data
          items:
          - key: ssh-private-key
            path: id_rsa
            mode: {{ .Values.secret.permissionPrivate }}
          - key: ssh-public-key
            path: id_rsa.pub
            mode: {{ .Values.secret.permissionPublic }}
{{- end }}
{{- end }}