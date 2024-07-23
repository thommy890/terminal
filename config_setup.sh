cd ${HOME}

rm ${HOME}/.zshrc

git clone --bare https://github.com/thommy890/config.git ${HOME}/.cfg

alias config="/usr/bin/git --git-dir=${HOME}/.cfg/ --work-tree=${HOME}"

config checkout master
config config status.showUntrackedFiles no
config submodule update --init --recursive || break
