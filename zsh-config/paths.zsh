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
export YARN_GLOBAL="/usr/local/bin"
export PATH="${PATH}:${YARN_GLOBAL}"

# Dev path
export DEV="${HOME}/Developer"
export PATH="${PATH}:${DEV}"

# Golang bin path
export GO_BIN="${CONFIG}/go/bin"
export PATH="${PATH}:${GO_BIN}"

# Documents path
export DOC="${HOME}/Documents"
export PATH="${PATH}:${DOC}"

# NVM path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# LTeX
export LTEX_PATH="${HOME}/.local/share/nvim/lsp_servers/ltex/ltex-ls/bin/"
export PATH="${PATH}:${LTEX_PATH}"

# TexLab
export TEXLAB_PATH="${HOME}/.local/share/nvim/lsp_servers/latex"
export PATH="${PATH}:${TEXLAB_PATH}"

# Jedi lanaguage server
export PYLSP_PATH="${HOME}/.local/share/nvim/lsp_servers/pylsp/venv/bin/"
export PATH="${PATH}:${PYLSP_PATH}"
