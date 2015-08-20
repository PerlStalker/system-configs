# X.org
{% for p in [ 
  'xorg-server',
  'xorg-server-utils',
  'xorg-apps',
  'xorg-xinit',
  'xf86-input-synaptics',
  'xorg-xbacklight',
  'x11-ssh-askpass',
  'gtk2',
  'xterm',
  'xscreensaver'
 ] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

## X11 video drivers
{% for p in ['xf86-video-nouveau', 'xf86-video-intel'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

# xorg-apps install fails
# Known issue with program groups: Salt bug 15749

# key bindings
{% for p in ['xbindkeys', 'tk', 'xvkbd'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

# sound
{% for p in ['pulseaudio', 'pulseaudio-alsa', 'alsa-utils', 'pavucontrol'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

# display manager
{% for p in ['i3', 'i3-wm', 'dmenu', 'i3status'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

{% for p in ['xfce4', 'xfce4-goodies'] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}

xfce4-terminal:
  pkg:
    - installed
feh:
  pkg:
    - installed
synergy:
  pkg:
    - installed

virt-manager:
  pkg:
    - installed

# x2go
x2goclient:
  pkg.installed
x2goserver:
  pkg:
    - installed
  service:
    - running
    - enable: true
  
## other apps
{% for p in [
  'rdesktop',
  'surfraw',
  ] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}
  
# java

# flash
flashplugin:
  pkg.installed

# libreoffice
{% for p in [
  'libreoffice-still',
  'libreoffice-still-en-US',
  ] %}
{{ p }}:
  pkg:
    - installed
{% endfor %}
