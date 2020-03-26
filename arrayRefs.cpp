void foo_p (int* a, int i)
{
   a[i]=0;
}

void foo1 (int a[10], int i)
{
   a[i]=0;
}

void foo2 (int a[10][10], int i, int j)
{
   a[i][j]=0;
}

void foo3 (int a[10][10][10], int i, int j , int k)
{
   a[i][j][k]=0;
}
