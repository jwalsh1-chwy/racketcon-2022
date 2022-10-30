#!/usr/bin/env bash
# Get all of the core repositories mentioned during the conference
repos=(https://github.com/ralsei/bingus.git
    git@github.com:LeifAndersen/interactive-syntax-clojure.git
    git@github.com:dwrensha/lean4-maze.git
    # git@github.com:leanprover/lean4.git
    git@github.com:jackfirth/resyntax.git
    # git@github.com:titzer/virgil.git
    git@github.com:titzer/wizard-engine.git)

echo "Found ${#repos[@]} repositories"
# This should be run from the project root
repo_root=$(pwd)/repos
mkdir -p $repo_root

# Clone all of the repos if not already cloned
for repo in "${repos[@]}"; do
    cd $repo_root
    repo_name=$(echo ${repo##*/} | sed 's/\.git$//')
    if [ ! -d "$repo_name" ]; then
        echo "Cloning $repo_name"
        git clone "$repo"
    else
        echo "Already cloned $repo_name"
        cd $repo_name
        git pull
        repo_url=$(git config --get remote.origin.url)
        if [ "$repo_url" != "$repo" ]; then
            echo "Repo $repo_name has changed remote from $repo_url to $repo"
            git remote set-url origin "$repo"
        fi
    fi
done

# Show the url for each repo
function repo_url() {
    repo_name = $1
    if [ -d "$repo_name" ]; then
        cd $repo_root/$repo_name
        git remote get-url origin
    else
        echo "Repo not found"
    fi
}

# Get the latest commit for each repo
function get_latest_commit() {
    cd $repo_root/$1
    git rev-parse HEAD
}
