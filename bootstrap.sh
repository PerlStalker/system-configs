#!/bin/bash

CM=salt

if [ "$CM" == "salt" ]; then
    # yes, this is evil and wrong and shouldn't be done
    wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
    chmod +x bootstrap-salt.sh
    ./bootstrap-salt.sh -P stable
    if [ ! -d /srv ]; then
	mkdir -p /srv
    fi
    ln -s $PWD/salt /srv
    salt-call --local state.highstate
fi
