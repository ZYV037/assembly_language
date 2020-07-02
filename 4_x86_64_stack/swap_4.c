long scount = 0;

void swap(long* xp, long* yp)
{
    long t0 = *xp;
    long t1 = *yp;

    *xp = t1;
    *yp = t0;
}

/* Swap a[i] & a[i+1] */
void swap_ele(long a[], int i)
{
    swap(&a[i], &a[i+1]);
}