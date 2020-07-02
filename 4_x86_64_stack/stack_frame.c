long sum = 0;

void swap(long* xp, long* yp)
{
    long t0 = *xp;
    long t1 = *yp;

    *xp = t1;
    *yp = t0;
}

/* swap a[i] & a[i+1] */
void swap_ele_su(long a[], int i)
{
    swap(&a[i], &a[i+1]);
    sum += a[i];
}