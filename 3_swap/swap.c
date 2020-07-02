void swap(int* xp, int* yp)
{
    int t0 = *xp;
    int t1 = *yp;

    *xp = t1;
    *yp = t0;
}

int zip1 = 15213;
int zip2 = 91125;

int main()
{
    swap(&zip1, &zip2);
    return 0;
}