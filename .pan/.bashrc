# .bashrc

# basic stuff of local Linux AWS WorkSpace
# adding the following lines in case of need:

PS1="\[\e[38;5;236m\]> \[\e[38;5;241m\]> \[\e[38;5;247m\]>\[\e[38;5;37m\] PAN \[\e[38;5;241m\]|\[\e[38;5;37m\] \u \[\e[38;5;241m\]\w \n\[\033[01;33m\]\$ \[\033[00m\]"

echo "|--> Python pre-check: overwrite python + pip to version 3 + output version:"
alias python=python3
python --version
alias pip=pip3
pip --version
echo $(pip show boto3 2>&1 | head -n2)
echo "---| "
echo "|--> awscli pre-check: output active version of awscli:"
aws --version
echo "---| "
echo "|--> CDK pre-check: check and set default Node.JS to fixed LTS version 16."
nvm install 16.18.1
echo "---| "
echo "|--> CDK pre-check: check if terminal supports CDK cmds."
command -v cdk --version >/dev/null 2>&1 || { echo "WARN: CDK is missing here in this terminal  o_o " >&2; }
echo "Now ready to go with this terminal."
echo "---|"
