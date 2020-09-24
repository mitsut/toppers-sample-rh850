# ATK2 sample program

Gitpodを使ってTOPPERS/ATK2のsample1を動かすためのPlayGroundSです。

# Require
- Web browser
- Github account
- Gitpod account


# Tutorial

## Gitpodでリポジトリのワークスペースを作成します。
https://www.gitpod.io/#https://github.com/mitsut/toppers-sample-rh850

## Setup

```
mkdir sample1 ; cd sample1
cp $HAKONIWA_HOME/athrill-target-rh850f1x/params/rh850f1k/atk2-sc1/*.txt .
../toppers-atk2-sc1/configure -T hsbrh850f1k_gcc -g ${HAKONIWA_HOME}/cfg
```

## Build

```
make
```

## Run(Simulation debuging)

```
$ athrill2 -c1 -i -d device_config.txt -m memory.txt atk2-sc1

core id num=1
ROM : START=0x0 SIZE=1024
RAM : START=0xfede8000 SIZE=512
ELF SET CACHE RIGION:addr=0x0 size=62 [KB]
Elf loading was succeeded:0x0 - 0xf999 : 62.409 KB
Elf loading was succeeded:0xf99c - 0x1215c : 0.220 KB
ELF SYMBOL SECTION LOADED:index=16
ELF SYMBOL SECTION LOADED:sym_num=597
ELF STRING TABLE SECTION LOADED:index=17
DEBUG_FUNC_FT_LOG_SIZE=1024
[DBG>
HIT break:0x0
[NEXT> pc=0x0 prc_support.S 254
c
[CPU>
TOPPERS/ATK2-SC1 Release 1.4.2 for HSBRH850F1K (Sep 24 2020, 07:58:55)

Input Command:
```

