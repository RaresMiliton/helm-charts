{{- define "secrets-volume" }}
{{- if .Values.secret.create  }}
      - name: ssh-key
        secret:
          secretName: ssh-data
          items:
          - key: ssh-private-key
            path: id_rsa
          - key: ssh-public-key
            path: id_rsa.pub
          defaultMode: 600
{{- end }}
{{- end }}