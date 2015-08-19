chromium:
  pkg.installed:
    {% if grains['os'] == 'Debian' %}
    - name: chromium-browser
    {% elif grains['os'] == 'Arch' %}
    - name: chromium
    {% endif %}

firefox:
  pkg:
    - installed