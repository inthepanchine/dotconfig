#
# Environment variable file
#

# Default editor
export EDITOR="nvim"

# Set term color
export TERM="screen-256color"

# java home
export JAVA_HOME="$(java -XshowSettings:properties -version 2>&1 > /dev/null | grep 'java.home' | sed 's/^.*java.home = //g')"
