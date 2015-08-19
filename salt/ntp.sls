ntp:
  pkg:
    - installed
  service:
    - running
    - enable: true
    - name: 'ntpd'
