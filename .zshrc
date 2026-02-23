# Deps
source ~/.zalias

# User config

## Load Version Control System
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='▲  %F{4}${(%):-%1~}/%f %F{yellow}$(vcprompt -f "(%b) ")%f'
# PROMPT='%F{14}%*%f %F{4}%~%f %F{13}${vcs_info_msg_0_}%f%F{15}▲%f '


# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
  eval "`fnm env`"
fi

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# custom scripts
export PATH="$HOME/dev/bin:$PATH"
