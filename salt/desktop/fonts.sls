# fonts
font-terminus:
  pkg.installed:
    {% if grains['os'] == 'Arch' %}
    - name: terminus-font
    {% elif grains['os'] == 'Debian' %}
    - name: xfonts-terminus
    {% endif %}

font-droid:
  pkg.installed:
    {% if grains['os'] == 'Arch' %}
    - name: ttf-droid
    {% elif grains['os'] == 'Debian' %}
    - name: fonts-droid
    {% endif %}

font-dejavu:
  pkg.installed:
    {% if grains['os'] == 'Arch' %}
    - name: ttf-dejavu
    {% elif grains['os'] == 'Debian' %}
    - name: fonts-dejavu
    {% endif %}

font-indic:
  pkg.installed:
    {% if grains['os'] == 'Arch' %}
    - name: ttf-indix-otf
    {% elif grains['os'] == 'Debian' %}
    - name: fonts-indic
    {% endif %}
