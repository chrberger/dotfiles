#!/usr/bin/env bash

if [ -f $HOME/.config/systemd/user/atuin.service ]; then
  systemctl --user daemon-reload
  systemctl --user enable atuin.service
  systemctl --user start atuin.service
fi
