set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias p="playerctl play-pause"
    alias icat="kitty +kitten icat"
    alias s="kitty +kitten ssh"
    alias cat="bat"
end

# pnpm
set -gx PNPM_HOME "/home/errorcodezero/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
