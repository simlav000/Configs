export EDITOR=vim

alias editnvim="nvim ~/.config/nvim/init.lua"
alias editbash="nvim ~/.bashrc"
alias editalias="nvim ~/.config/.bash_aliases"

alias cat="batcat"

alias choco='ssh choco.physics.mcgill.ca'
alias exosim='ssh -Y exosim'
alias lxplus='ssh -Y -A -l slavoie lxplus.cern.ch'
alias lxplus7='ssh -Y -l slavoie lxplus7.cern.ch'


alias kinit='\kinit slavoie@CERN.CH'

alias gimmie='python3 $HOME/McGill/Multiquark/scripts/gimmie.py'

cs() {
	cd "$@" && ls
}

CC() {
    "$@" | xclip -selection clipboard
}
alias gs="git status"
