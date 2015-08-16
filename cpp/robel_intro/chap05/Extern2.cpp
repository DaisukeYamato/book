extern int a; // Extern1.cpp :: a
void Func();  // Extern1.cpp :: Func

int main() {
  Func();
  a = 5;
  Func();
}
