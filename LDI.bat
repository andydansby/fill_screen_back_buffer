cls

del 1LDI_1.tap

@bas2tap -a10 -sloader loader.bas basloader.tap

pasmo -v --tap LDI_method.asm LDI_method.tap LDI_method.sym

copy /b basloader.tap + LDI_method.tap  1LDI_1.tap

del LDI_method.tap
del basloader.tap

@rem for Auto Running / testing of your compile
@rem https://fms.komkon.org/Speccy/
path=C:\zx emulator\speccy
Speccy -48 -nosound 1LDI_1.tap
