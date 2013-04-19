update_system() {
  if command -v aptitude >/dev/null; then
    fancy_echo "Using aptitude ..."
  else
    fancy_echo "Installing aptitude ..."
    successfully sudo apt-get install -y aptitude
  fi
  successfully sudo aptitude update
  successfully sudo aptitude -y dist-upgrade
}

install_pkg() {
  successfully sudo aptitude install -y $1
}
