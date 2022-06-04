function browse() {
    directory=`ls -Rd $1/* | fzf`
    if [ -z "$directory" ]
    then
     directory=$1
    fi
    cd $directory;
}