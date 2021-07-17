#!/bin/bash
if [ -f "$HOME/.easycsinstalled" ]; then
    source ~/.profile
    echo Booting up code-server and localtunnel...
    $CS/code-server --bind-addr --password $PASSWORD localhost:6969 > cs.log &
    echo Your password is $PASSWORD
    node $LT/lt.js --port 6969
else
    echo Looks like it\'s the first time you ran Easy Code Server! Running install script...
    bash install.sh
fi
