cls

del 1pushpop_1.tap

@bas2tap -a10 -sloader loader.bas basloader.tap

pasmo -v --tap pushpop_1.asm pushpop_1.tap pushpop_1.sym

@copy /b basloader.tap + pushpop_1.tap  1pushpop_1.tap


del pushpop_1.tap
rem del basloader.tap

@rem for Auto Running / testing of your compile
@rem https://fms.komkon.org/Speccy/
path=C:\zx emulator\speccy
Speccy -48 -nosound 1pushpop_1.tap

