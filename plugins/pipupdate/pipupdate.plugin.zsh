pip_update() {
  echo 'import pip\nfrom subprocess import call\nfor dist in pip.get_installed_distributions(): call("pip install --upgrade " + dist.project_name, shell=True)' | python
}
