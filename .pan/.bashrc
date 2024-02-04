# .bashrc

# basic stuff of local Linux AWS WorkSpace
# adding the following lines in case of need:

PS1="\[\e[38;5;236m\]> \[\e[38;5;241m\]> \[\e[38;5;247m\]>\[\e[38;5;37m\] PAN \[\e[38;5;241m\]|\[\e[38;5;37m\] \u \[\e[38;5;241m\]\w \n\[\033[01;33m\]\$ \[\033[00m\]"

echo "|--> pre-check:  Python (set alias to python3 + pip3)"
alias python=python3
#python --version
alias pip=pip3
#pip --version
#echo $(pip show boto3 2>&1 | head -n2)
echo "|--> pre-check:  AWS CDK Tools (NodeJS, awscli, CDK v2)"
command -v node --version >/dev/null 2>&1 || { echo "WARN: NodeJS is missing here in this terminal  o_o " >&2; }
echo "NodeJS: $(node --version)"
command -v aws --version >/dev/null 2>&1 || { echo "WARN: awscli is missing here in this terminal  o_o " >&2; }
command -v cdk --version >/dev/null 2>&1 || { echo "WARN: CDK is missing here in this terminal  o_o " >&2; }
echo "CDK:    $(cdk --version | cut -d "(" -f1)"
echo "|--> reminder:   CloudAccess SSO is available:"
alias | grep -E 'iat|prd' | grep -v read | cut -d = -f1
echo ""
echo " ▏ ▎ ▍ ▋ ▊ ... ready ---| "
