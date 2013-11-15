#########################################################
# Virtualenvwrapper configuration and initialization    #
#########################################################
## virtualenvwrapper configuration

# root dir for the virtual environments managed by virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs

## pip-virtualenv(wrapper) integration

# tell pip to use the same parent dir for virtual environments
# as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# tell pip to install distributions on the currently active virtualenv (if one) 
export PIP_RESPECT_VIRTUALENV=true

# initialize  virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
