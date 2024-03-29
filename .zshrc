# Window Manager
_JAVA_AWT_WM_NONREPARENTING=1; export _JAVA_AWT_WM_NONREPARENTING
WT_TOOLKIT=MToolkit; export AWT_TOOLKIT

# Global Order: zshenv, zprofile, zshrc, zlogin

autoload -U compinit compinit
setopt autopushd pushdminus pushdsilent pushdtohome
setopt autocd
setopt cdablevars
setopt ignoreeof
setopt interactivecomments
setopt nobanghist
setopt noclobber
setopt SH_WORD_SPLIT

HISTFILE=~/.histfile
HISTSIZE=200000
SAVEHIST=20000

#setopt share_history
setopt incappendhistory
setopt appendhistory
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

export EDITOR="vim"
export BROWSER="firefox"

# allow approximate
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# tab completion for PID :D
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:processes' command 'ps x -o pid,pcpu,tt,args'

# cd not select parent dir
zstyle ':completion:*:cd:*' ignore-parents parent pwd

bindkey "^[[A" history-beginning-search-backward     # [arrow-up]
bindkey "^[[B" history-beginning-search-forward      # [arrow-down]

# Switch back to emacs mode
bindkey -e

# export TERM=ansi

#
# ALIASES
#

alias -s html=$BROWSER

alias ls='ls --color=auto'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -l'
alias la='ls -A'
alias l='ls -1'
alias ..='cd ..'
alias ll='ls -l'
alias lls='ls -l | sort -k 6 -n'
alias cp="cp -v"
alias rm="rm -v"
alias mv="mv -v"
alias ..="cd .."
alias c=crystal09
alias p=properties09
alias xc="xcrysden --crystal_inp"
alias xco="xcrysden --crystal_f9"
alias xp='xprop | grep "WM_WINDOW_ROLE\|WM_CLASS" && echo "WM_CLASS(STRING) = \"NAME\", \"CLASS\""'

alias pybuild='python setup.py clean config build'
alias pysetup='python setup.py clean config build install --prefix=/home/mpei'
alias pysetup_intel='python setup.py config --compiler=intel --fcompiler=intel build_clib --compiler=intel --fcompiler=intel build_ext --compiler=intel --fcompiler=intel install --prefix=/home/mpei'

alias pysetup_numpy='python setup.py config --compiler=intelem --fcompiler=intelem build_clib --compiler=intelem --fcompiler=intelem build_ext --compiler=intelem --fcompiler=intelem install --prefix=/home/mpei'
alias pysetup_scipy='python setup.py config --compiler=intelem --fcompiler=intelem build_clib --compiler=intelem --fcompiler=intelem build_ext --compiler=intelem --fcompiler=intelem install --prefix=/home/mpei'

#
# COMPILER
#
#export F77=ifort
#export F90=ifort
#export F95=ifort
#export F03=ifort

#export OMPI_FC=ifort
#export OMPI_F77=ifort
#export MPIF77=ifort
#export MPIF90=ifort

#export CC=icc
#export CXX=icpc
#export MPICC=icc
#export MPICXX=icpc

#export LANG=C

#
# PYTHON
#
export PYTHONPATH="/home/mpei/lib/python2.7/site-packages:$PYTHONPATH"

# GPAW / ASE
export ASE_TAGS=https://svn.fysik.dtu.dk/projects/ase/tags
export GPAW_TAGS=https://svn.fysik.dtu.dk/projects/gpaw/tags
export GPAW_SETUP_PATH="/home/mpei/Software/gpaw-setups"

# AICCM
export AICCM_BASIS_PATH="/home/mpei/aiccm/basis/"
export AICCM_SLAKO_PATH="/home/mpei/aiccm/slako/"
 
#
# PATH SETTINGS
#
export PATH="/home/mpei/bin:/opt/intel/bin:/opt/cxoffice/bin:/home/mpei/chemistry/scripts:/home/mpei/Software/xcrysden-1.5.53-bin-shared:$PATH"
#
export LD_LIBRARY_PATH="/home/mpei/aiccm/aiccm:/opt/intel/lib/intel64/:/opt/intel/mkl/lib/intel64:/opt/intel/composerxe/lib/intel64:/home/mpei/lib:$LD_LIBRARY_PATH"
#
export LIBRARY_PATH="$LD_LIBRARY_PATH"
#
export MKLroot="/opt/intel/mkl"
#
export INCLUDE="/opt/intel/composerxe/mkl/include:/opt/intel/composerxe/include:/home/mpei/include:/home/mpei/include/openmpi/ompi:$INCLUDE"
#
export MANPATH="/opt/intel/composerxe/man:$MANPATH"

export KDEWM=awesome
export WINDOW_MANAGER=/usr/bin/awesome

export ECLIPSE_HOME=/home/mpei/Software/eclipse

export PATH="/usr/local/texlive/2011/bin/x86_64-linux:$PATH"
export MANPATH="/usr/local/texlive/2011/texmf/doc/man:$MANPATH"
export INFOPATH="/usr/local/texlive/2011/texmf/doc/info:$INFOPATH"
export TEXMFHOME="/usr/local/texlive/2011/texmf"
export TEXMFCNF="/usr/local/texlive/2011/texmf/web2c"

# deMon2k
export CREX_ROOT=/home/mpei/deMon2k
export CREX_HOME=/home/mpei/deMon2k
export MANPATH=/home/mpei/deMon2k/deMon/man:\$MANPATH
export PATH=/home/mpei/deMon2k/deMon/bin:$PATH

export WINDOW_MANAGER=/usr/bin/awesome

# Compiler
source /opt/intel/bin/iccvars.sh intel64
source /opt/intel/bin/ifortvars.sh intel64

# Go
export GOROOT=$HOME/Software/go
export PATH=$PATH:$GOROOT/bin

# Ubuntu One
export PYTHONPATH="/home/mpei/Software/UbuntuOneStable/configglue-1.0.3:$PYTHONPATH"
export PYTHONPATH="/home/mpei/Software/UbuntuOneStable/dirspec-3.0.0:$PYTHONPATH"
export PYTHONPATH="/home/mpei/Software/UbuntuOneStable/ubuntuone-client-2.0.0:$PYTHONPATH"
export PYTHONPATH="/home/mpei/Software/UbuntuOneStable/ubuntu-sso-client-1.3.3:$PYTHONPATH"
#
export PATH="/home/mpei/Software/UbuntuOneStable/ubuntu-sso-client-1.3.3/bin:$PATH"
export PATH="/home/mpei/Software/UbuntuOneStable/ubuntuone-client-2.0.0/bin:$PATH"

export LD_LIBRARY_PATH="/home/mpei/Software/UbuntuOneStable/ubuntuone-client-2.0.0/libsyncdaemon:$LD_LIBRARY_PATH"

autoload -U promptinit
promptinit
prompt ubuntu
