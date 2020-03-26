struct RT {
  char A;
  int B[10][20];
  char C;
};
struct ST {
  int X;
  double Y;
  struct RT Z;
};

int *foo(struct ST *s) {
  int bi = s->X;

  return &s[1].Z.B[bi][13];
}
