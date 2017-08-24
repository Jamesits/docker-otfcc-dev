# Docker otfcc prebuilt environment

Debian with [otfcc](https://github.com/caryll/otfcc), [otfcc-cubic2quad](https://github.com/caryll/otfcc-cubic2quad) installed.

Written for [m13253/kaigen-fonts](https://github.com/m13253/kaigen-fonts).

## Usage

```shell
docker run --rm -v "$(pwd):/root" -it jamesits/otfcc-dev:latest bash
```

Preinstalled programs:

 * `otfccdump`
 * `otfccbuild`
 * `otfcc-c2q`
 * `kaigen-otf2ttf`
