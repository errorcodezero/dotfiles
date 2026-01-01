if status is-interactive
	alias chz="chezmoi"
	alias g="git"
	alias t="tmux"
    alias s="kitty +kitten ssh"
    alias lt="nvim leetcode.nvim"
    alias ls="lsd"
	alias nv="nvim"
    alias fr="grep -rl $OLDTEXT . | xargs sed -i 's/$OLDTEXT/$NEWTEXT/g'"
	alias tm="tmux"
	alias nt="tmux new-session nvim"
    alias spicetify-fix="sudo chmod a+wr /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify && sudo chmod a+wr -R /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/Apps"
    alias slack="slack-cli"
end

# fish_add_path /home/errorcodezero/.spicetify
