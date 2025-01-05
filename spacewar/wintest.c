#include <stdio.h>

int main() {
#ifdef WIN32_BUILD
	printf("Hey Gordon, it's me, Barney, from Black Mesa!\n");
#endif
#ifdef _WIN32
	printf("Hey Gordon, it's me, **UNDERCOVER** Barney from Black Mesa!\n");
#endif
#ifndef _WIN32
#ifndef WIN32_BUILD
	printf("You, citizen! Come with me! *proceeds to bash with stunstick*\n");
#endif
#endif
	return 0;
}
