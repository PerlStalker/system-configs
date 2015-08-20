Salt configs for building a few of my personal systems. I mostly use
this just to make sure the apps I like are installed across all of my
desktop systems.

     sudo ./boostrap.sh

bootstrap.sh downloads and runs bootstrap-salt.sh and runs it as
root. You should fear that. Anyway, if salt can't pick up the hostname
properly, you can set the minion id in /etc/salt/minion_id.