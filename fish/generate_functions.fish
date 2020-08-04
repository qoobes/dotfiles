function create_function -d "Creates and saves a function. [name] \"[command]\""
    set --local name $argv[1]
    set --local command $argv[2..-1]

    alias $name=$command
    funcsave $name
end


function generate_functions -d "Generates appropriate functions for terminal use"
    # Tester
    create_function hello "echo hi"

    # Git Aliases
    create_function commit "git commit -m"
    create_function push "git push"
    create_function gs "git status"
    create_function add "git add"

    # General Aliases
    create_function cl "clear"
    create_function cdproj "cd /mnt/d/Projects"
    create_function la "ls -Al"
end
