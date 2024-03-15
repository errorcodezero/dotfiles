if status is-interactive
	alias chz="chezmoi"
	alias g="git"
	alias t="tmux"
    alias s="kitty +kitten ssh"
    alias lt="nvim leetcode.nvim"
    alias ls="lsd -l"
    alias fr="grep -rl $OLDTEXT . | xargs sed -i 's/$OLDTEXT/$NEWTEXT/g'"
    function fish_prompt
        powerline $pipestatus
    end
end

fish_add_path /home/errorcodezero/.spicetify
