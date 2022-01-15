<h1 align="center"><code>nowm</code></h1>
<p align="center">Managing window without a window manager</p>
<p align="center">
  <a href="logo.svg">
    <img src="logo.svg" width="256px" height="256px">
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
- And everything is float.

## 🚀 Setup

### 🧾 Dependencies

- [`bash`](https://www.gnu.org/software/bash)
- [`Xorg`](https://www.x.org)
- [`xdotool`](https://github.com/jordansissel/xdotool)
- [`xprop`](https://gitlab.freedesktop.org/xorg/app/xprop)

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

> *If you can and want to port NoWM to other package managers, feel free to do so.*

## ⌨️ Usage

Simply launch it from the [tty](https://en.wikipedia.org/wiki/Tty_(Unix)):

```sh
startx $(which nowm)
```

## ⚙️ Configuration

To config NoWM, You can make a *executable file* at `~/.config/nowm/nowmrc`, NoWM will automatically start it at runtime.

You can also change that path by setting the environment variable `$NOWM_CONFIG_HOME`.

> _Check out some [examples](https://github.com/K4zoku/nowm/tree/master/examples)._

## 💌 Credits

Special thanks to:
- [**NNB**](https://github.com/NNBnh) for polish this project's `README.md`.

<br><br><br><br>

---

> <p align="center">Made with ❤️ by <a href="https://github.com/K4zoku">@K4zoku</a></p>
