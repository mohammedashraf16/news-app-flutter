//Create a function that finds a cube of numbers
void main(){
int result =calculateCube(4);
print("Area : $result");
}
int calculateCube(int number) {
  int cube = number * number * number;
  return cube;
}