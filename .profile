#### terminal setting
# 리눅스처럼 ls 사용 시, 색상 표시하기 위한 설정
export CLICOLOR=1
# for using 'grep'
export GREP_OPTIONS="--color=auto"

# for prompt
export PS1="[\u@\h:\w]\\$ "

# alias
alias ll="ls -al"

##### maven
export MAVEN_HOME=$HOME/local/apache-maven-3.3.9
export PATH=$MAVEN_HOME/bin:$PATH

##### python
export PATH=$HOME/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

### for git
alias gitlog='git log --pretty=format:"%h %ad %cn %s"  --graph --name-status'
