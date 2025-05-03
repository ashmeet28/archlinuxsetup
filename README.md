# archlinuxsetup

## Installation

- Do not forget to generate grub.cfg
- Do not forget to install sudo
- Add user with `useradd -m xenon`
- Add user to wheel group with `usermod -aG wheel xenon`
- Edit sudoers file with `export EDITOR=nano` and `visudo` to give xenon sudo
permissions
- Run `source setup_base_packages`
