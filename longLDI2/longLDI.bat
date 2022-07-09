cls

del 1longLDI2.tap


@rem copy /b table_top.bin + table_bottom.bin  table_7.bin

@bas2tap -a10 -sloader loader.bas basloader.tap


pasmo -v --tap longLDI.asm longLDI2.tap longLDI.sym

rem @copy /b basloader.tap + scroll1.tap  1output.tap
@copy /b basloader.tap + longLDI2.tap  1longLDI2.tap


del longLDI2.tap
del basloader.tap

@rem for Auto Running / testing of your compile
@rem https://fms.komkon.org/Speccy/
@rem path=C:\zx emulator\speccy
@rem Speccy -48 -nosound 1output.tap

@rem path=C:\zx emulator\inkspec
@rem incli --machine 48k --load 1output.tap
path=C:\zx emulator\inkspec
InkSpector64 \z88dk199c\games\russian_vertical\andy_test\longLDI2\1longLDI2.tap