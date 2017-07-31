#export CC=gcc-4.2
export CPPFLAGS=-I/opt/X11/include
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PLATFORM=mac
export TMUX_SHOW_MAIL=true

# allow brew to override system defaults
export PATH="/usr/local/bin:$PATH"

# add command line ssl proxy config
#   default: on
#   use 'source cliproxy.sh off' to turn off.
# export http_proxy=127.0.0.1:6152
# export https_proxy=127.0.0.1:6152

# add autojump for macos
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

