SDCC = sdcc
PACKIHX = packihx
OBJCOPY = objcopy
STCFLASH = ./tool/stcflash.py

mcu.bin : mcu.c
	$(SDCC) $<
	$(PACKIHX) mcu.ihx > mcu.hex
	$(OBJCOPY) -I ihex -O binary mcu.hex $@

.PHONY : clean flash

flash :
	python3 $(STCFLASH) main.hex

clean :
	-rm -rf *.asm *.hex *.ihx *.lk *.lst *.map *.mem *.rel *.rst *.sym *.bin
