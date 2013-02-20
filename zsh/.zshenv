# Le PATH = repertoires dans lequels le shell va chercher les commandes
# ATTENTION : le repertoire courant ne fait pas partie du PATH
export PATH="\
/usr/local/bin:\
/usr/local/sbin:\
/bin:/usr/bin:\
/usr/sbin:\
/sbin:\
/Users/jocelyn/Binaries"

export ANDROID_HOME="/opt/android-sdk"

export M2_HOME="/opt/apache-maven"

export ANT_HOME="/opt/apache-ant"

export PATH="$PATH:\
$ANDROID_HOME/tools:\
$ANDROID_HOME/platform-tools:\
$ANT_HOME/bin:\
$M2_HOME/bin"

# Viewer (Crontab, CVS,...)
export VISUAL=emacs
export EDITOR=emacs

# Permissions rw-r--r-- file rwxr-xr-x dir
umask 022

# Proxy HTTP / FTP sans mot de passe
#export http_proxy="http://proxy.exemple.org:8080"
#export ftp_proxy="ftp://proxy.exemple.org:8080"

# Proxy HTTP / FTP avec mot de passe
#export http_proxy="http://login:password@proxy.exemple.org:8080"
#export ftp_proxy="ftp://login:password@proxy.exemple.org:8080"

# Ne pas passer par le proxy pour les domaines locaux
#export no_proxy="exemple.org"

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
