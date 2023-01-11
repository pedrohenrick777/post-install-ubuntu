
BASEDIR=$(dirname $0)
export SRC_DIR=$BASEDIR/src
export LOG=$BASEDIR/logs.log
export $(cat .env | xargs)

# colors
export DEFAULT_COLOR='\033[0m'
export PURPLE='\033[1;35m'
export RED='\033[0;31m'
export BLUE='\033[0;34m'


if [ !$BASEDIR=='.' ]; then
    cd $BASEDIR
fi

clear
echo "\n${PURPLE}Post-Install Linux\007${DEFAULT_COLOR}\n"

echo "${RED}Update System${DEFAULT_COLOR}"
(sudo apt-get -y update && sudo apt-get -y upgrade) >>$LOG 2>>$LOG
echo "System updated!\n"

. src/index.sh