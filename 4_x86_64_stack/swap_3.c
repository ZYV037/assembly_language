long scount = 0;

/* Swap a[i] & a[i+1] */

void swap(long* xp, long* yp)
{
    long t0 = *xp;
    long t1 = *yp;

    *xp = t1;
    *yp = t0;
}

void swap_ele_se(long a[], int i)
{
    swap(&a[i], &a[i+1]);
    scount++;
} 