template < typename LOOP_BODY >
void forall (LOOP_BODY loop_body )
{
  loop_body (0 );
}

int main()
{
  double *x1; 
  double rh1; 
  //...
  auto kernel = [=](int i)
  {
    x1[i] += rh1;
  } ; 

  forall(kernel);
}
