#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <String.h>

#define MAX 1001

char S[MAX];
int Sum[MAX][MAX];
int Answer = 0;

void in(char *fName)
{
    FILE *in;

    in = fopen(fName, "rt");

    fscanf(in, "%s", &S);

    fclose(in);
}

void out(char *fName)
{
    FILE *out;

    out = fopen(fName, "wt");

    fprintf(out, "%d", Answer);

    fclose(out);
}

void solve()
{
    int size = strlen(S);
    for (int i = 0; i < size; i++)
    {
        Sum[i][i] = (S[i] - '0');
        for (int j = i + 1; j < size; j++)
        {
            Sum[i][j] = Sum[i][j - 1] + (S[j] - '0');
        }
    }
    for (int i = 0; i < size; i++)
    {
        int IDX = i;
        for (int j = i + 1; j < size; j += 2)
        {
            if ((Sum[i][j] % 2 == 0) && ((Sum[i][j] / 2) == Sum[i][IDX]))
            {
                Answer = (Answer > (j - i + 1)) ? Answer : (j - i + 1);
            }
            IDX++;
        }
    }
}

int main(int argc, char *argv[])
{
    in(argv[1]);
    solve();
    out(argv[2]);
}