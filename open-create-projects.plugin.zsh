my_php_projects_path="$HOME/Documents/vagrant_ubuntu12x32/public"
my_golang_projects_path="$HOME/Documents/go-workspace/src/github.com/MarcosSegovia"

open_create_projects() {
    local -A projects_path
    projects_path=(
        php      ${my_php_projects_path}
        go       ${my_golang_projects_path}
    )
    
   #(( $+{projects_path[$1]} )) || return 1

    local directory="${projects_path[$1]}/$2"
    
    if [[ -d "$directory" ]]; then
        echo "Path '$directory' found, opening existing project..."
    else
        echo "Path '$directory' not found, creating new project..."
        mkdir "$directory"
    fi

    case $1 in
        php)    /usr/local/bin/phpstorm $directory ;;
        go)     /usr/local/bin/Gogland $directory ;;
    esac
}

_open_create_projects() {
   
    local -A projects_path
    projects_path=(
        php        ${my_php_projects_path}
        go        ${my_golang_projects_path}
    )
    
    _arguments ':code platform:(php go)' \
    '*:project:_files -/ -W $projects_path[${words[2]}]'
}

compdef _open_create_projects open_create_projects
