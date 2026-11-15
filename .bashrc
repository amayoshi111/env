# =============================================================================
# Bash Configuration for Git Bash (Windows)
# =============================================================================

# -----------------------------------------------------------------------------
# Windows Symlink Configuration
# -----------------------------------------------------------------------------
# ln -s でネイティブシンボリックリンクを作らせる
# setx は毎回 "SUCCESS: ..." を stdout に出すので捨てる
setx MSYS winsymlinks:nativestrict > /dev/null

# -----------------------------------------------------------------------------
# Basic Configuration
# -----------------------------------------------------------------------------

# History configuration
HISTFILE=~/.bash_history
HISTSIZE=1000
HISTFILESIZE=2000

# -----------------------------------------------------------------------------
# Git Prompt (Git Bash has git-prompt.sh built-in)
# -----------------------------------------------------------------------------

# git-prompt.sh は Git for Windows の /etc/profile.d/git-prompt.sh が先に読み込むので、ここでは読み込まない

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
GIT_PS1_SHOWCOLORHINTS=true

# Prompt configuration (use PROMPT_COMMAND for git prompt)
PROMPT_COMMAND='__git_ps1 "[\[\e[1;32m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]]" "\n"'

# -----------------------------------------------------------------------------
# Aliases
# -----------------------------------------------------------------------------

# File listing aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -CF'

# Sudo aliases (not applicable on Windows Git Bash)
# alias _='sudo'
# alias _i='sudo -i'
# alias please='sudo'
# alias fucking='sudo'

# Navigation aliases
alias cdh='cd ~/'
alias cddc='cd ~/Documents'
alias cddw='cd ~/Downloads'
alias cdpic='cd ~/Pictures'

# Development aliases
alias dockere='docker exec -u 0 -it'

# Bun environment
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Rust environment
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# -----------------------------------------------------------------------------
# Tool-Specific Configuration
# -----------------------------------------------------------------------------

# Bat theme
export BAT_THEME=gruvbox-dark

# Claude Code Allow Agentic Teams
export CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1
# Claude Code subagent default model
export CLAUDE_CODE_SUBAGENT_MODEL=opus
