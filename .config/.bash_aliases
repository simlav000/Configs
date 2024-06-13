export EDITOR=vim

CC() {
    "$@" | xclip -selection clipboard
}

cs() {
	cd "$@" && ls
}

alias cat="batcat"
alias exosim='ssh -Y exosim'
alias choco='ssh choco.physics.mcgill.ca'
alias kinit='\kinit slavoie@CERN.CH'
alias lxplus='ssh -Y -A -l slavoie lxplus.cern.ch'
alias lxplus7='ssh -Y -l slavoie lxplus7.cern.ch'
alias gimmie='python3 /home/simlav000/McGill/Multiquark/scripts/gimmie.py'
