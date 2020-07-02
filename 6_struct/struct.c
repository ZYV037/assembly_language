struct rec
{
    int i;
    int a[3];
    int* p;
};

void set_i(struct rec* r, int val)
{
    r->i = val;
}