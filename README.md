# my-ubuntu-settings

## Apply tmux settings

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

```sh
alias vi='nvim'
alias tmux="TERM=xterm-256color tmux"
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
