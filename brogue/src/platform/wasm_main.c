#include "platform.h"
#include "libtcod.h"

TCOD_renderer_t renderer = TCOD_RENDERER_SDL; // the sdl renderer is more reliable than the opengl renderer
short brogueFontSize = -1;

#define BROGUE_TARGET_STRING "tcod"

extern playerCharacter rogue;
struct brogueConsole currentConsole;

boolean serverMode = false;
boolean noMenu = false;
unsigned long int firstSeed = 0;


int main(int argc, char *argv[])
{
	currentConsole = tcodConsole;

	rogue.nextGame = NG_NOTHING;
	rogue.nextGamePath[0] = '\0';
	rogue.nextGameSeed = 0;

	loadKeymap();
	currentConsole.gameLoop();

	return 0;
}
