set -gx fish_prompt_pwd_dir_length 0

abbr ls "ls --color=auto"
abbr grep "grep --color=auto"
abbr g++ "g++ -std=c++17"

set fish_greeting
set fish_prompt

function fish_prompt
	# echo -n [$USER@$hostname (prompt_pwd)]$
	echo (set_color c7c7c7)(date +%H:%M:%S) (set_color 97655e)(prompt_pwd) (set_color 274c5c)(fish_git_prompt) (set_color 274c5c)'→ '
end

if status is-interactive
	cat ~/.cache/wal/sequences

	fish_add_path $HOME/.config/emacs/bin
	fish_add_path $HOME/.cargo/env
end
