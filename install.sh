BASEDIR=$(dirname $0)
export SRC_DIR=$BASEDIR/src
export LOG=$BASEDIR/logs.log
export $(cat .env | xargs)

# colors
export DEFAULT_COLOR='\033[0m'
export PURPLE='\033[1;35m'
export RED='\033[0;31m'
export BLUE='\033[0;34m'

. src/index.sh

if [ !$BASEDIR=='.' ]; then
    cd $BASEDIR
fi

main
