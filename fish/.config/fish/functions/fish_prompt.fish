function fish_prompt
    set -l symbol '$ '
    echo -n [$USER@$hostname (prompt_pwd)]$symbol
end
