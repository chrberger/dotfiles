#!/usr/bin/env bash

# See https://github.com/atuinsh/atuin/issues/952#issuecomment-2781257111
if [ -f $HOME/.config/systemd/user/atuin.service ]; then
  systemctl --user daemon-reload
  systemctl --user enable atuin.service
  systemctl --user start atuin.service
fi

echo "If not already happened, run atuin login"
