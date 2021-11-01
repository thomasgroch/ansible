[[ ! -e ~/.password-store ]] || git clone https://gitlab.com/thomas.groch/password-store.git ~/.password-store && \
	if [[ -n $(which xclip) ]]; then
		sudo pacman -S --noconfirm xclip
	fi
	# Import my GnuPG and OpenSSH keys
	. /run/media/tg/safe/run.sh

if [[ -z $(which ansible-pull) ]]; then # if are not installed
	if [[ -n $(which pacman) ]]; then # if are installed
		sudo pacman -S --noconfirm ansible
	elif [[ -n $(which apt) ]]; then
		sudo apt install -y ansible
	fi
fi
if [[ -n $(which ansible-pull) ]]; then
	sudo ansible-pull --url https://github.com/thomasgroch/ansible --limit $(cat /etc/hostname).local
fi