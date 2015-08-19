#!/bin/bash

CM=salt

if [ "$CM" == "salt" ]; then
    # yes, this is evil and wrong and shouldn't be done
    wget -O - https://bootstrap.saltstack.com | sh
    if [ ! -d /srv ]; then
	mkdir -p /srv
    fi
    ln -s salt /srv
    salt-call --local state.highstate
fi
