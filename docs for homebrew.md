# docs for homebrew

在 Mac 上安装软件程序，通常的做法应该是以下两种：

1. 在 Mac App Store 搜索，然后安装；
1. 对于不在 Mac App Store 上架的软件，先在搜索引擎中搜索，找到官网，然后打开下载页面下载，
最后再将下载的安装包拖到「软件程序」文件夹或执行安装。
是不是有些麻烦？其实还有一种高效快速安装 Mac 软件的方法：使用 Homebrew Cask 扩展。
只需在终端输入一行命令，就可以解决包括查找、下载和安装软件的一系列步骤。

下面一起来解锁这种高效而炫酷的安装 Mac App 新姿势。

## Homebrew Cask简介
Homebrew 是基于 OS X 的套件管理工具，是一个开源的 Ruby 脚本，专门用于快速下载软件。
通俗地讲，Homebrew 类似于一个软件中心，只不过有着更丰富的资源与更高效的管理。

Homebrew Cask，是一套建立在 Homebrew 基础之上的 OS X 软件安装命令行工具，是 Homebrew 的扩展。
简言之，你可以把 Homebrew Cask 当作是 Homebrew 的一部分，在安装常用软件的过程中，
大部分情况下我们只需要使用 Homebrew Cask 就足够了。

## 优势
1. 通过 Homebrew 下载安装的软件全部来自对应的软件官网，无需担心下载源的安全问题。
1. 依存于系统既有的库，减少空间占用和冗余
1. 使用 Git 进行管理和更新
1. 易于定制
1. 安装软件 / 软件包 / 软件都在一个目录下，方便管理，这也是 Homebrew 能如此受欢迎的最大原因之一。

## 安装
1. 配备 Intel CPU 的 Mac 电脑
确保 Mac 系统版本在 OS X 10.9 或以上。

2. 安装 Xcode
如果电脑上没有安装 Xcode，你需要先在 Mac App Store 下载 Xcode，
如果嫌 Xcode 体积庞大的话，可以前往 Apple 开发者网站 尝试下载 Command Line Tools for Xcode 进行安装。

3. 安装 Homebrew
相信有些朋友已经在 Aria2 的文章中安装过 Homebrew 套件管理器了，上一步的 Xcode 安装也是为这一步做准备。
如果你还没有安装过 Homebrew，方法也很简单，打开终端运行下列代码就可以了：

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

