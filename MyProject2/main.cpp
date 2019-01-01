#include <cstdio>

#include "MyClass2.h"
#include "MyFunction2.h"

int main(int argc, char** argv)
{
   printf("main\n");
   MyClass2 tMyClass2;
   tMyClass2.doSomething();
   doMyFunction2();
   return 0;
}