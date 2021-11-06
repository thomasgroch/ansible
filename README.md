## 🚀 Installation

```sh
curl -Lks https://raw.githubusercontent.com/thomasgroch/dotfiles/master/bootstrap-ansible.sh | /bin/bash

# or POSIX compatible lazy install
download=false ; if type curl >/dev/null 2>/dev/null ; then download='curl -Lks' ; elif type wget >/dev/null ; then download='wget -O -' ; else ; echo "No way to download ansible; please install curl or wget with your package manager" ; fi ; eval "$download https://raw.githubusercontent.com/thomasgroch/dotfiles/master/bootstrap-ansible.sh" | /bin/bash
```
