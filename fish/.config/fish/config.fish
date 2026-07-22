if status is-interactive
    set -g fish_greeting ""
    set -g fish_prompt_pwd_dir_length 0

    abbr ls "ls --color=auto"
    abbr grep "grep --color=auto"

    cat ~/.cache/wal/sequences

    fish_add_path $HOME/.config/emacs/bin
    fish_add_path $HOME/.cargo/env
end
