
{% if grains['os'] == 'Debian' %}
aptitude:
  pkg.installed
{% endif %}

# emacs
emacs:
  pkg.installed
ditaa:
  pkg.installed
  
texlive:
  pkg.installed:
    {% if grains['os'] == 'Debian' %}
    - name: texlive
    {% elif grains['os'] == 'Arch' %}
    - name: texlive-most
    {% endif %}

zsh:
  pkg.installed
tmux:
  pkg.installed
openvpn:
  pkg.installed

{% if grains['os'] == 'Arch' %}
openssh:
  pkg:
    - installed
{% elif grains['os'] == 'Debian' %}
openssh-client:
  pkg.installed
openssh-server:
  pkg.installed
{% endif %}
  
gnupg:
  pkg.installed
    
{% if grains['os'] == 'Arch' %}
  {% for p in ['ffmpeg', 'kdenlive', 'vlc', 'audacity', 'xmms2'] %}
{{ p }}:
  pkg:
    - installed
    {% endfor %}
{% endif %}

{% if grains['os'] == 'Arch' %}
glibc:
  pkg.installed
{% endif %}

# misc
{% for p in [
  'wget',
  'rsync',
  'sysstat',
  'ispell',
  'aspell-en',
  'pianobar',
  'evince',
  'dnsutils',
  'samba',
  ] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

# printing
cups:
  pkg:
    - installed
  service:
    - running
    - enable: true
{% if grains['os'] == 'Arch' %}
    - name: 'org.cups.cupsd'
{% elif grains['os'] == 'Debian' %}
    - name: 'cups'
{% endif %}
{% for p in [
  'cups-pdf',
  'ghostscript', 'gsfonts',
  'foomatic-db', 'foomatic-db-engine',
  'a2ps'
  ] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

{% if grains['os'] == 'Arch' %}
foomatic-db-nonfree:
  pkg.installed
gutenprint:
  pkg.installed
{% elif grains['os'] == 'Debian' %}
printer-driver-gutenprint:
  pkg.installed
{% endif %}

# wireless
{% if grains['os'] == 'Arch' %}
{% for p in ['dialog', 'iw', 'wpa_supplicant', 'wpa_actiond'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}
{% endif %}

# version control
{% for p in ['cvs', 'subversion', 'mercurial', 'bzr', 'git'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

{% if grains['os'] == 'Debian' %}
build-essential:
  pkg.installed
autoconf:
  pkg.installed
texinfo:
  pkg.installed
install-info:
  pkg.installed
{% endif %}
