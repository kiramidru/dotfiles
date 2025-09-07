# Set Zinit Home Directory 
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Pure Prompt
zinit light sindresorhus/pure

# Zsh Autosuggestions
zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions

# Zsh Syntax Highlighting
zinit ice wait lucid
zinit light zsh-users/zsh-syntax-highlighting

# Keybindings
bindkey -v

# Pure Configs
PURE_PROMPT_SYMBOL='➜'
PURE_PROMPT_SYMBOL_COLOR=green
export PURE_GIT_PROMPT_ONLY_IN_REPO=true
