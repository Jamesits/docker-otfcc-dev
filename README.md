# Docker otfcc prebuilt environment

Debian with [otfcc](https://github.com/caryll/otfcc), [otfcc-cubic2quad](https://github.com/caryll/otfcc-cubic2quad) installed.

## Usage

```shell
docker run --rm -v "$(pwd):/root" -it jamesits/otfcc-dev:latest bash
```

Preinstalled programs:

 * `otfccdump`: dump font to JSON
 * `otfccbuild`: build font from JSON
 * `otfcc-c2q`: convert CFF OTF to TTF
 * `kaigen-otf2ttf`: the script used to build [m13253/kaigen-fonts](https://github.com/m13253/kaigen-fonts)

## Caveat

System requirements:

 * The programs use only one core, so go for some less-core higher-frequency CPUs
 * \>12GB free RAM needed to convert SourceSanHans series (16GB is recommended)
 * 3GB free disk space to store temporary files
 * and a lot cups of tea to fill yourself while waiting (no, don't drink Java)
