chromium:
  pkg.installed:
    {% if grains['os'] == 'Ubuntu' %}
    - name: chromium-browser
    {% elif grains['os'] == 'Arch' %}
    - name: chromium
    {% endif %}

firefox:
  pkg:
    - installed