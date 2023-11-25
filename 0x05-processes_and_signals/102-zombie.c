#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
/**
 * infinite_while - creates an infinite while loop
 * Return: null
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - entry point of a program
 * Return: null
 */
void main(void)
{
	int i;

	for (i = 0; i < 5; i++)
	{
		if (fork() == 0)
		{
			printf("Zombie process created, PID: %d\n", getpid());
			exit(EXIT_SUCCESS);
		}
	}
	infinite_while();
}
