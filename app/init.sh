# shellcheck disable=SC1090,SC2148

myzs:module:new "$0"

if _myzs:internal:checker:command-exist "brew" &&
  ! _myzs:internal:checker:command-exist "pack"; then
  brew install buildpacks/tap/pack
fi

# add pack completion
if _myzs:internal:checker:command-exist "pack"; then
  _myzs:internal:load "pack completion" "$(pack completion --shell zsh)"
fi
