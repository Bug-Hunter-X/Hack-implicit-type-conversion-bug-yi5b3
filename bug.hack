function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) + 3;
}

function main(): void {
  echo baz(5);
}

/*This code will produce an unexpected output. The issue is that Hack does not implicitly convert numeric types when performing mathematical operations. For example the function foo expects an integer as an argument but the function bar passes it a double.The solution is to make sure that the function foo accepts a double.This code should be fixed by changing the type of x in foo to double*/