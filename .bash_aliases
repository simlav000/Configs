export EDITOR=vim

CC() {
    "$@" | xclip -selection clipboard
}

wizard() {
    python3 ~/python/ascii_duplication_glitch.py ~/images/wallpaper/wizard.png 3 | lolcat && ls 
}

cs() {
	cd "$@" && ls
}

wizard

alias exosim='ssh -Y exosim'
alias choco='ssh choco.physics.mcgill.ca'
alias lxplus='ssh -Y -l slavoie lxplus.cern.ch'
alias lxplus7='ssh -Y -l slavoie lxplus7.cern.ch'
