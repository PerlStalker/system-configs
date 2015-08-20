chromium:
  pkg.installed:
    {% if grains['os'] == 'Ubuntu' %}
    - name: chromium-browser
    {% elif grains['os'] == 'Debian' %}
    - name: chromium
    {% elif grains['os'] == 'Arch' %}
    - name: chromium
    {% endif %}

firefox:
  pkg.installed:
    {% if grains['os'] == 'Debian' %}
    - name: iceweasel
    {% else %}
    - name: firefox
    {% endif %}

w3m:
  pkg.installed
