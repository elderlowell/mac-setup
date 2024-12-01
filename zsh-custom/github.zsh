function new-ssh-key () {
  ssh-keygen -t ed25519 -C "elderlowell@gmail.com"
  eval "$(ssh-agent -s)"
  if [ ! if "~/.ssh/config" ]
  then
    touch "~/.ssh/config"
  fi
  
  ssh-add --apple-user-keychain ~/.ssh/id_ed25519
  pb copy < ~/.ssh/id_ed25519.pub
  echo "Public key copied to cliplboard!"
  echo "You can now add this new key to GitHub."
  echo "https:/github.com/settings/ssh/new
}