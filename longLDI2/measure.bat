cls

ticks test.sna -pc 8000 -start 8000 -end 8097

@rem 604 0000		-pc 8000 -start 8000 -end 8097
@rem 604 0000		-pc 0x8000 -start 0x8000 -end 0x8097
@rem 902 0000		-pc #8000 -start #8000 -end #8097
@rem 902 0000		-pc $8000 -start $8000 -end $8097

@rem Ticks v0.16 beta, a silent Z80 emulator by Antonio Villena, 1 Jan 2016

@rem ticks <input_file> [-pc X] [-start X] [-end X] [-counter X] [-output <file>]

@rem  <input_file>   File between 1 and 65536 bytes with Z80 machine code
@rem  -tape <file>   emulates ZX tape in port $FE from a .WAV file
@rem  -pc X          X in hexadecimal is the initial PC value
@rem  -start X       X in hexadecimal is the PC condition to start the counter
@rem  -end X         X in hexadecimal is the PC condition to exit
@rem  -counter X     X in decimal is another condition to exit
@rem  -int X         X in decimal are number of cycles for periodic interrupts
@rem  -output <file> dumps the RAM content to a 64K file
@rem  -romprotect    disable writes between 0000 and $3fff

@rem  Default values for -pc, -start and -end are 0000 if ommited. When the program
@rem exits, it'll show the number of cycles between start and end trigger in decimal