alias sc='echo -e "\nMy shortcuts: \n"; cat ~/.bash_aliases | grep 'alias'; echo -e "\n"'
alias vimalias="sudo vim ~/.bash_aliases"

alias restartapache='sudo apachectl restart'
alias runjmeter="sh ~/Downloads/apache-jmeter-2.11/bin/jmeter.sh &"
alias starwars="telnet towel.blinkenlights.nl"
alias hosts="vim /Users/gfogelberg/.ssh/known_hosts"

alias upgrade-awscli='curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && unzip awscli-bundle.zip && sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws'

#alias custodianenv="virtualenv --python=python2 custodian && source custodian/bin/activate"

#-----alias working with jenkins-----
alias jenkins="/usr/local/bin/jenkins"
alias job-dsl="java -jar /Users/gfogelberg/Downloads/job-dsl-plugin-job-dsl-1.59/job-dsl-core/build/libs/job-dsl-core-1.59-standalone.jar"
alias rmxlm="rm *.xml*"

#-----alias working with SaltStack-----
alias highstatemaster="vagrant up saltmaster && vagrant ssh saltmaster && sudo -i && salt-call -l debug state.apply"
alias applycimaster="vagrant up ciMaster && vagrant ssh ciMaster && sudo -i && salt-call -l debug state.apply"
alias applycislave="vagrant up ciSlave1 && vagrant ssh ciSlave1 && sudo -i && salt-call -l debug state.apply"

#-----alias working with directory-----
alias cdsalt="cd ~/projects/salt-config"
alias cdjen="cd ~/projects/jenkins-jobs"
alias cdsit="cd ~/projects/salt-integration-testing"

#-----alias working with base git-----
alias gs="git status"
alias release-next="co release-next && git pull origin release-next"
alias release-nextdb="co release-next && git pull dandb release-next && git push origin release-next"
alias master="co master && git pull origin master"
alias masterdb="co master && git pull dandb master && git push origin master"
alias stash="git stash"
alias pop="git stash pop"
alias pushit="git push origin HEAD"
alias fuckit="git push origin -f HEAD"

release-tag () {
    co master && git pull && git tag -a '$1' -m '$1 - release-$1' && git push origin --tags
}

amend () {
    git add $1 && git commit --amend
}

lineSearch () {
    git log -S '$1'
}

co () {
    git checkout $1
}

cobra () {
    git checkout -b $1
}

gdel () {
    git branch -d $1
}

gDel () {
    git branch -D $1
}

gcp () {
    git cherry-pick $1
}

gpul () {
    git pull origin $1
}

instanceIps() {
    aws ec2 describe-instances --region $1 --query 'Reservations[].Instances[].{Name:Tags[?Key==`Name`].Value[],PrivateIpAddress:PrivateIpAddress}' --filters "Name=tag:Name,Values=$2"
}
