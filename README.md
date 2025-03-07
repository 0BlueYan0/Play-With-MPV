**本项目不再维护，请移步至新项目**

[External Player](https://github.com/LuckyPuppy514/external-player)

# Play-With-MPV

![20230414193858](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-04-14/20230414193858.gif)

## 🌟 简介

使用 mpv 播放网页中的视频，并支持 potplayer 及自定义播放器

- 支持播放器：mpv，`mpv.net`，potplayer，vlc，iina ......
- 支持浏览器：Edge，Chrome，Firefox，[查看更多 👆](https://www.tampermonkey.net/index.php)
- 支持的网站：[Bilibili](https://www.bilibli.com)，[YouTube](https://www.youtube.com)，[巴哈姆特](https://ani.gamer.com.tw)，[低端影视](https://ddys.art)，[查看更多 👆](https://www.lckp.top/play-with-mpv/index.html)

[![20230414194209](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-04-14/20230414194209.webp)](https://www.lckp.top/play-with-mpv/index.html)

## 🐳 安装

### 1. 💡 安装播放器

- [mpv.net_CM](https://kutt.lckp.top/uVaT3U)

> 也可自行安装其他播放器，如 potplayer / vlc 等，但某些功能可能无法使用 🔥

### 2. 🐵 安装油猴插件

- [Tampermonkey](https://www.tampermonkey.net/index.php)

### 3. 📺 安装油猴脚本

- [Play-With-MPV](https://greasyfork.org/zh-CN/scripts/444056-play-with-mpv)

### 4. ⚙️ 脚本设置

打开一个支持的网页，比如：[导航页](https://www.lckp.top/play-with-mpv/index.html)  

#### 4.1. mpv

输入软件路径，保存设置后，下载注册表到本地并打开

![20230225005437](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-02-25/20230225005437.webp)

#### 4.2. potplayer

输入软件路径，保存设置后，下载注册表到本地并打开

![20230225005446](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-02-25/20230225005446.webp)

#### 4.3. 自定义

需要自行查找相关文档，找到播放器对应的 URL 调用命令和参数

![20230225005456](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-02-25/20230225005456.webp)

例如，iina 对应的视频参数为：iina://weblink?url=${EvideoUrl}

![20230225005505](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-02-25/20230225005505.webp)

| 参数名称 |    参数取值    |                        说明                        |
| :------: | :------------: | :------------------------------------------------: |
| 视频链接 |  ${videoUrl}   | yt-dlp/m3u8/flv/mp4/mkv ... 播放器不支持则无法播放 |
| 音频链接 |  ${audioUrl}   |           为空则不支持最高画质和视频编码           |
| 字幕链接 | ${subtitleUrl} |             为空则无法加载B站外挂字幕              |
|   标题   |    ${title}    |                 为空则无法传递标题                 |
| 开始时间 |  ${startTime}  |                为空则不支持同步时间                |
| 代理地址 |    ${proxy}    |                为空则不支持代理设置                |
| referer  |   ${referer}   |            为空则无法观看B站和橘子动漫             |
|  origin  |   ${origin}    |               为空则无法观看巴哈姆特               |

如需对参数取值进行 URL 编解码，只需在参数前添加 E（编码）或 D（解码），例如

- `${EvideoUrl}` 表示 videoUrl 进行 URL 编码后的值
- `${DvideoUrl}` 表示 videoUrl 进行 URL 解码后的值

#### 4.4. 代理设置

仅对油管和巴哈姆特有效，请先尝试不设置代理的情况下观看

![20230225005516](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-02-25/20230225005516.webp)

> 一般情况对于 v2rayN 或 clash 等代理软件，才需要手动进行代理设置

- v2rayN 默认：`http://127.0.0.1:10809`
- clash 默认：`http://127.0.0.1:7890`

#### 4.5. 其他设置

同时开启自动播放和自动关闭后，如需修改设置，请到导航页进行操作：[https://www.lckp.top/play-with-mpv/index.html](https://www.lckp.top/play-with-mpv/index.html)

## ✅ 效果展示

![20230225005523](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-02-25/20230225005523.webp)

![20230225005529](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-02-25/20230225005529.webp)

![20230225005536](https://github.com/LuckyPuppy514/image/raw/main/2023/2023-02-25/20230225005536.webp)

## 👏 相关仓库

- [mpv](https://github.com/mpv-player/mpv) — mpv 播放器
- [mpv-lazy](https://github.com/hooke007/MPV_lazy) — mpv 播放器懒人版
- [mpv.net_CM](https://github.com/hooke007/mpv.net_CM) — `mpv.net` 汉化版
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) — 视频下载
- [Bilibili-Evolved](https://github.com/the1812/Bilibili-Evolved) - B站增强脚本
- [Anime4K](https://github.com/bloc97/Anime4K) — 动漫画质增强
- [bilibili-API-collect](https://github.com/SocialSisterYi/bilibili-API-collect) — B站接口整理
- [MPV-Play-BiliBili-Comments](https://github.com/itKelis/MPV-Play-BiliBili-Comments) — mpv B站弹幕脚本
- [IPTV](https://github.com/youshandefeiyang/IPTV) — 肥羊的IPTV直播源

## 👏 特别感谢

- 谷歌插件：[ff2mpv](https://github.com/woodruffw/ff2mpv)

- 油猴脚本：[play-with-mpv](https://greasyfork.org/zh-CN/scripts/416271-play-with-mpv)

- 油猴脚本：[Bilibili-Evolved](https://github.com/the1812/Bilibili-Evolved) + [playwithmpv](https://github.com/videoanywhere/playwithmpv)

## 😘 如何贡献

非常欢迎你的加入！[提一个 Issue](https://github.com/LuckyPuppy514/Play-With-MPV/issues/new) 或者提交一个 Pull Request。

## 🃏 使用许可

[MIT](https://github.com/LuckyPuppy514/Play-With-MPV/blob/main/LICENSE) © LuckyPuppy514
