#
# Environment paths.
#

# ~/.config path
export CONFIG="${HOME}/.config"
export PATH="${PATH}:${CONFIG}"

# ~/.local/bin path
export LOCAL_BIN="${HOME}/.local/bin"
export PATH="${PATH}:${LOCAL_BIN}"

# tmux configuration path
export TMUX_CONFIG="${CONFIG}/tmux/tmux.conf"

# Path to PolishCow for its alias
export POLISHCOW_PATH="${LOCAL_BIN}/PolishCow/PolishCow"
export PATH="${PATH}:${POLISHCOW_PATH}"

# Downloads path
export DOWNLOADS="${HOME}/Downloads"
export PATH="${PATH}:${DOWNLOADS}"

# Clangd path
export CLANGD_PATH="$(brew --prefix llvm)/bin"
export PATH="${PATH}:${CLANGD_PATH}"

# yarn path
export YARN_GLOBAL="$(yarn global bin)"
export PATH="${PATH}:${YARN_GLOBAL}"
