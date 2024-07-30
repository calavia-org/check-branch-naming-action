export GITHUB_BASE_REF=master
export GITHUB_HEAD_REF=featureJJ/mishuevos
EXPRESSION="^feature$|fix|doc|major"

if ! [[ "$(echo ${GITHUB_HEAD_REF} | cut -d "/" -f1)" =~ (${EXPRESSION}) || ! "$(echo ${GITHUB_BASE_REF})" =~ (master|main) ]]; then
  echo "Your pull request to main does not follow your naming convention -> ${EXPRESSION}"
  exit 1
else
  echo "Your branch name follows the your naming convention -> ${EXPRESSION}"
fi
