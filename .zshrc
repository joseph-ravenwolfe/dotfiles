#################################################
############# ANTIGEN CONFIGURATION #############
#################################################
source /opt/homebrew/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle brew
antigen bundle yarn
antigen bundle akarzim/zsh-docker-aliases
antigen bundle fasd
antigen bundle asdf
antigen theme joseph-ravenwolfe/tryptic
antigen apply

#################################################
################ HOOK FOR DIRENV ################
#################################################
eval "$(direnv hook zsh)"

#################################################
################## HOOK FOR Z ###################
#################################################
. /opt/homebrew/etc/profile.d/z.sh

#################################################
########## SET VSCODE AS DEFAULT EDITOR #########
#################################################
export EDITOR='code --wait'