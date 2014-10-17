# NV's Portage Overlay

## これは何

主に自分のために作ったGentoo LinuxのPortage Overlayです。

## 使い方

laymanがインストールされていることが前提です。

`/etc/layman/layman.cfg`の`overlays`を以下のように変更します。

```text
overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
            https://raw.githubusercontent.com/nvsofts/my-overlay/master/overlays.xml
```

変更した後、実際に追加します。

```console
# layman -S
# layman -a nvsofts-overlay
```
