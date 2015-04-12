<<<<<<< HEAD
function gi() { curl -sL https://www.gitignore.io/api/$@ ;}

_gitignoreio_get_command_list() {
  curl -sL https://www.gitignore.io/api/list | tr "," "\n"
}

_gitignoreio () {
  compset -P '*,'
  compadd -S '' `_gitignoreio_get_command_list`
}

compdef _gitignoreio gi
=======
function gi() { curl http://gitignore.io/api/$@ ;}
>>>>>>> 083a7e4b081a9a5f93685ec6b19edb6282d6454b
