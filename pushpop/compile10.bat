cls
@del 10output.tap

@rem https://worldofspectrum.org/forums/discussion/18626/
@rem cd gfx
@rem call table7.bat
@rem cd ..

@rem copy /b table8T.BIN + table8B.BIN  table_8.bin

@bas2tap -a10 -sloader loader.bas basloader.tap

pasmo -v --tap andy_test_10.asm scroll10.tap scroller10.sym

@copy /b basloader.tap + scroll10.tap  10output.tap


@del scroll10.tap
@del basloader.tap

@rem for Auto Running / testing of your compile
@rem https://fms.komkon.org/Speccy/
@rem path=C:\zx emulator\speccy
@rem Speccy -48 -nosound 1output.tap

@rem path=C:\zx emulator\inkspec
@rem incli --machine 48k --load 1output.tap
@path=C:\zx emulator\inkspec
@InkSpector64 \z88dk199c\games\russian_vertical\andy_test\10output.tap