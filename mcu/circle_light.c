#include <reg52.h>

void circle_light()
{
	unsigned char foot = 0;
	short j = -1;
	unsigned int i;
	while (1){
		if (foot >= 7 || foot <= 0)
			j = -j;
		P2 = ~(0x80 >> foot);
		foot += j;
		for (i = 0; i < 10000; i++);
	}
}
