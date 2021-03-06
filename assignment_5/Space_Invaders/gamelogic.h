#ifndef game_logic_H_   /* Include guard */
#define game_logic_H_

void initializeGame(clock_t startTimer);
void updateGameTime(int* gameTime, clock_t* startTimer);
void updateToggleValues(int gameTime, int* updateToggle, int* gunnerToggle);

void moveGunnerRight(int* gunnerX);
void moveGunnerLeft(int* gunnerX);

int checkCollideAliens(int pSramAliens, int projX, int projY);
int checkCollideGunner(int gunnerX, int projX, int projY);

#endif // game_logic_H_
