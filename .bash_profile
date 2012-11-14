source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '
export BUNDLER_EDITOR=mvim

# vi key bindings
set -o vi

alias ll='ls -al'
alias ..='cd ..'
alias ...='cd ../..'

alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gb='git branch'
#alias gl='git log --pretty= --color --graph'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias grb='git rebase'
alias grbi='git rebase -i'
alias gd='git diff'
alias stash='git stash'
alias pop='git stash pop'
alias latest='stash && mpull && pop'
alias pull='git pull'
alias mpull='git pull origin master'
alias push='git push'
alias mpush='git push origin master'

alias bi='bundle install'
alias be='bundle exec'
alias sc='bundle exec script/console'
alias ss='bundle exec script/server'
alias ssd='bundle exec script/server --debugger'
alias cuke='bundle exec cucumber features'
alias rs='bundle exec rake'
alias sgm='script/generate migration'
alias sgmod='script/generate rspec_model --skip-fixture'
alias wtch='bundle exec watchr script/specs.watchr.rb'

alias migrate='bundle exec rake db:migrate db:test:prepare'
alias deploy-staging='bundle exec cap -S revision=rails-2-continuation staging deploy'
alias deploy-prod='bundle exec cap -S revision=rails-2-continuation ec2 deploy'

alias mysql='/usr/local/mysql/bin/mysql'
alias ec2='ssh -i ~/.ssh/hh-prod.pem ubuntu@ec2-50-16-218-184.compute-1.amazonaws.com'
alias ec2l='ssh -i ~/.ssh/hh-prod.pem ubuntu@ec2-50-17-67-113.compute-1.amazonaws.com'

# ruby GC settings
#export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_MIN_SLOTS=5000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000    # i.e. 1 gb
export RUBY_HEAP_FREE_MIN=500000

# colorize terminal
export CLICOLOR=1

alias mysql='/usr/local/mysql/bin/mysql'

# ec2 command line tools vars

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
#export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.3-51254/jars"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.3-51254"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# start in hopper dir
cd projects/hopper
