#!/bin/bash

# Requires bash 4.0 or later

output_dir=$1
if [[ -z $output_dir ]]; then output_dir=$PWD; fi

declare -A seen
git_commands=(`git help -a | grep -e "^  \\w"`)
for cmd in ${git_commands[@]}; do
    seen[$cmd]=1
done

skip_builtins=1
for cmd in `compgen -c`; do
    if [[ -n $skip_builtins ]]; then
        if [[ $cmd == wait ]]; then
            skip_builtins=
        fi
        continue
    fi
    if [[ -n ${seen[$cmd]} || $cmd =~ ^git- ]]; then continue; fi
    cat <<EOT > "${output_dir}/git-$cmd"
#!/bin/sh
exec $cmd "\$*"
EOT
    chmod +x "${output_dir}/git-$cmd"
done
