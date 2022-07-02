<h1 align="center"><code>nowm</code></h1>
<p align="center">Managing window without a window manager</p>
<p align="center">
  <a href="logo.svg">
    <img src="https://user-images.githubusercontent.com/43980777/153220880-cf7aa55f-4999-44ee-bff2-db8805d23d2c.png" width="256px" height="256px">
  </a>
</p>

## 💡 About

A dead simple tool to managing windows from the [tty](https://en.wikipedia.org/wiki/Tty_(Unix)), written in shell script.

### ✨ Features

- No [virtual desktops](https://en.wikipedia.org/wiki/Virtual_desktop).
- No [window decorations](https://en.wikipedia.org/wiki/Window_(computing)#Window_decoration).
- No [widgets](https://github.com/NNBnh/dots/wiki/wm-job#-widgets "Like bar, menu, ...").
- No [hotkeys](https://github.com/NNBnh/dots/wiki/wm-job#%EF%B8%8F-hotkeys).
- No [wallpaper](https://github.com/NNBnh/dots/wiki/wm-job#%EF%B8%8F-wallpaper).
- No [ICCCM](https://web.archive.org/web/20190617214524/https://raw.githubusercontent.com/kfish/xsel/1a1c5edf0dc129055f7764c666da2dd468df6016/rant.txt).
- No [EWMH](https://en.wikipedia.org/wiki/Extended_Window_Manager_Hints).
- And everything is float.

## 🚀 Setup

### 🧾 Dependencies

- [`sh`](https://en.wikipedia.org/wiki/Unix_shell)
- [`xorg`](https://www.x.org)
- [`xorg-xinit`](https://x.org/releases/X11R7.6/doc/man/man1/xinit.1.xhtml) _(optional)_
- [`xdotool`](https://github.com/jordansissel/xdotool)

### 📥 Installation

#### 🔧 Manually

Option 1: using `curl`

```sh
curl https://raw.githubusercontent.com/K4zoku/nowm/master/bin/nowm > ~/.local/bin/nowm
chmod +x ~/.local/bin/nowm
```

Option 2: using `git`

```sh
git clone https://github.com/K4zoku/nowm.git ~/.local/share/nowm
ln -s ~/.local/share/nowm/bin/nowm ~/.local/bin/nowm
```

#### 📦 Package manager

For [Bpkg](https://github.com/bpkg/bpkg) user:

```sh
bpkg install K4zoku/nowm
```

For [Basher](https://github.com/basherpm/basher) user:

```sh
basher install K4zoku/nowm
```

> **Note** If you can and want to port NoWM to other package managers, feel free to do so.

## ⌨️ Usage

#### 🖥️ Launch from TTY

##### Automatically

Simply launch it from the [tty](https://en.wikipedia.org/wiki/Tty_(Unix)):

```sh
nowm
```

this will launch NoWM inside X display server with `startx`.

##### Manually

```sh
startx $(which nowm)
```

or

```sh
xinit $(which nowm)
```

or

You can put NoWM inside `~/.xinitrc`:

```sh
exec nowm
```

### Using display manager

If you using a display manager, create a file called `nowm.desktop` in `/usr/share/xsessions` with following content:

```ini
[Desktop Entry]
Encoding=UTF-8
Name=nowm
Comment=nowm - managing window without a window manager
Exec=nowm
Type=XSession
```

## ⚙️ Configuration

To config NoWM, you can make a *executable file* at `~/.config/nowm/autostart`, NoWM will automatically start it at runtime.

> **Note** Check out some [examples](examples).

## 💌 Credits

Special thanks to:
- [**NNB**](https://github.com/NNBnh) for polish this project's `README.md`, write the manpage and design [new logo](https://www.figma.com/file/NuxUjGNgfnCZ5fY5Q554ME/NoWM-Logo?node-id=0%3A1).

<br><br><br><br>

---

> <p align="center">Made with ❤️ by <a href="https://github.com/K4zoku">@K4zoku</a></p>
