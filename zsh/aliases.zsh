# alias ll="ls -alh"
alias -g ....='../../..'
alias -g .....='../../../..'
# alias clr="lein repl" # clojure lein repl
# alias t=tmux
# alias m="mux"
# alias y="yum"
# alias wee="mux s wee"
# alias gist="gist -p" # automatically make gists private
alias weather="curl wttr.in/rdu"


# alias g="nocorrect git"
# alias gg="g st -s"
# alias gs="git stash"
# alias gaa="git rev-parse --show-toplevel | xargs git add -A"

# alias rp="rake && ggpush"
# alias rdbm="rake db:migrate"
# alias testdb="RAILS_ENV=test rake db:drop && RAILS_ENV=test rake db:create && RAILS_ENV=test rake db:migrate"

# alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"

# ruby aliases
# alias rvm="nocorrect rvm"
# alias heroku="nocorrect heroku"
# alias b="bundle"
# alias u="unicorn_rails"
# alias prc="pry -r config/environment.rb"
# alias rr="cd .. && cd - && rvm-prompt" # reload rvm
# alias irb="pry"
# alias rs="rails server -b 0.0.0.0" # bind to all interfaces

if [[ `uname` == 'Darwin' ]]; then
  # w中文,G颜色 for  MacOS
  alias ls='ls -wGh'
  alias ll='ls -lwGh'
  alias lsa='ls -awGh'
  alias lla='ls -lawGh'

  alias ctags="`brew --prefix`/bin/ctags"
  alias top='top -o cpu'
fi
if [[ `uname` == 'Linux' ]]; then
  alias ls='ls --color=tty'
  alias ll='ls -lh --color=tty'
  alias lsa='ls -a --color=tty'
  alias lla='ls -lah --color=tty'
fi
alias tag="ctags --tag-relative -Rf.git/tags --exclude=.git --exclude=log --languages=-javascript,sql"

alias tree1="find . -type d | sed -e 1d -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|-/'"
alias tree2="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias grepi='grep -i'  #case insensitive grep
alias f='find . -iname'
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders and files
# shows the commands you use most, it's useful to show you what you should create aliases for
alias profileme="history | awk '{print $2}' | awk 'BEGIN{FS=\"|\"}{print $1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias df='df -h'
alias md='mkdir -p'

alias startmysql='sudo /usr/local/mysql/bin/mysqld_safe &'
alias startsynergys='/Applications/Synergy/synergys -f --config /Users/Kimhin/__DotFiles/SynergyConf/synergy.conf'

