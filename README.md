# my-ubuntu-settings

## Apply tmux settings

Install tpm

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Open tmux and press Ctrl+B and then : to bring up a command prompt, and typing:

```sh
:source-file ~/.tmux.conf
```
or
```sh
tmux source ~/.tmux.conf
```
To install tmux plugins, press Ctrl+B and then I.


## .bashrc

at the top of .bashrc
```sh
export TERM=xterm-256color
```

```sh
alias vi='nvim'
alias tmux="TERM=xterm-256color tmux"
```

if use vnc
```
alias my_vncserver="vncserver --localhost no --geometry 1920x1080"
```

## inputrc

```sh
echo 'set completion-ignore-case On' | sudo tee -a /etc/inputrc
```

## apt list

```sh
sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sed -i 's/us.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sed -i 's/security.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
sed -i 's/extras.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
```

## Terminal color

https://draculatheme.com/gnome-terminal
