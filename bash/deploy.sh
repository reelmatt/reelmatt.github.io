# Helper output functions
line () {
    info "--------------------------------------"
    echo ""
}

info () {
    echo $(tput bold)$(tput setaf 4)$@ $(tput sgr 0)
}

# Function to handle git actions locally
welcome () {
    echo ""
    info "Running git status -------------------"
    git status
    line
    info "How would you like to proceed?"
    info " (1) Stage and commit all changed files, push and deploy."
    info " (2) Exit"
    info "Enter your choice: "
    read -${BASH_VERSION+e}r choice

     case $choice in
        1)
            info "Enter a commit message: "
            read -${BASH_VERSION+e}r msg
            line
            git add --all
            git commit -m "$msg"
            git push origin master
            line
            ;;
        2)
            info "Ok, goodbye!";
            exit
            ;;
        *)
            echo "Unknown command";
            ;;
    esac
}
