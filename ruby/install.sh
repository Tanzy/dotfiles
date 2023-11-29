if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

command_exists () {
  command "$1" &> /dev/null ;
}

if command_exists rvm
then
  echo 'rvm found, no action needed'
else
  echo 'Did not find rbenv or rvm!'
  # Install RVM for managing Ruby

  gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

  \curl -sSL https://get.rvm.io | bash -s stable --ruby
fi


