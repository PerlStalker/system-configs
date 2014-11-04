## currently arch specific

include:
  - desktop.x11
  - desktop.browsers
  - sudo

# emacs
emacs:
  pkg:
    - installed
ditaa:
  pkg.installed
texlive-most:
  pkg.installed
    
chrony:
  pkg:
    - installed
  service:
    - running
    - enable: true

zsh:
  pkg:
    - installed
tmux:
  pkg:
    - installed
openvpn:
  pkg:
    - installed
openssh:
  pkg:
    - installed

gnupg:
  pkg.installed
    
{% for p in ['ffmpeg', 'kdenlive', 'vlc', 'audacity', 'xmms2'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

# misc
{% for p in [
  'wget',
  'rsync',
  'sysstat',
  'glibc',
  'ispell',
  'aspell-en',
  'pianobar',
  'evince',
  'dnsutils',
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
    - name: 'org.cups.cupsd'
{% for p in [
  'cups-pdf',
  'ghostscript', 'gsfonts',
  'foomatic-db', 'foomatic-db-engine', 'foomatic-db-nonfree',
  'gutenprint',
  'a2ps'
  ] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}


# wireless
{% for p in ['dialog', 'iw', 'wpa_supplicant', 'wpa_actiond'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

# version control
{% for p in ['cvs', 'subversion', 'mercurial', 'bzr', 'git'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}


## dev/virtualization
docker:
  pkg:
    - installed
  service:
    - running
    - enable: true
libvirt:
  pkg:
    - installed
# qemu-kvm?
qemu:
  pkg:
    - installed
