alias ls="ls -la"
alias ..="cd .."
alias rm="rm -i"

# usage: service_start apache2
function service_start ()
{
    sudo /etc/init.d/"$1" start
}

# usage: service_stop mysql
function service_stop ()
{
    sudo /etc/init.d/"$1" stop
}

# usage: service_restart cron
function service_restart ()
{
    sudo /etc/init.d/"$1" restart
}

# usage: search_text "start()" /var/www
function search_text ()
{
    sudo egrep --color -r "$1" "$2"
}

# usage: search_file index.php /var/www
function search_file()
{
    sudo find "$2" -name "$1"
}

# usage: compress logs.gz /foo/logs
function compress()
{
	tar -zcvf "$1" "$2"
}

# usage: uncompress logs.gz
function uncompress()
{
	tar -zxvf "$1"
}

function commit()
{
    git commit -am "$1"
}

function push()
{
    git push
}

function pull()
{
    git pull
}

function diff()
{
    git diff
}

function status()
{
    git status
}

function add()
{
    git add -A
}

export VISUAL=vim
export EDITOR=vim

clear