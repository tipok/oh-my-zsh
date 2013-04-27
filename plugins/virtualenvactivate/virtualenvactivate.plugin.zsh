activate() {
  if [[ -f ./$1/bin/activate  ]]; then
    export VIRTUAL_ENV_DISABLE_PROMPT='1'
    source ./$1/bin/activate
  else
      echo "no ./$1/bin/activate found"
  fi
}
