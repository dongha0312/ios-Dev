//
//  main.c
//  C
//
//  Created by Dongha Ryu on 5/10/24.
//

#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

int S, ans;

void in(char *fName)
{
    FILE *in;

    in = fopen(fName, "rt");

    fscanf(in, "%d", &S);

    fclose(in);
}

void out(char *fName)
{
    FILE *out;

    out = fopen(fName, "wt");

    fprintf(out, "%d", ans);

    fclose(out);
}

void solve(void)
{
    ans = S+1;
}

int main(int argc, char *argv[])
{
    in(argv[1]);
    solve();
    out(argv[2]);
}
