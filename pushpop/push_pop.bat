cls
@del 1output.tap

@bas2tap -a10 -sloader loader.bas basloader.tap

pasmo -v --tap push_pop.asm push_pop.asm.tap push_pop.asm.sym

@copy /b basloader.tap + push_pop.asm.tap  1output.tap


@del scroll10.tap
@del basloader.tap

@rem for Auto Running / testing of your compile
@rem https://fms.komkon.org/Speccy/
@rem path=C:\zx emulator\speccy
@rem Speccy -48 -nosound 1output.tap

@path=C:\zx emulator\inkspec
@InkSpector64 \z88dk199c\games\russian_vertical\andy_test\pushpop\1output.tap