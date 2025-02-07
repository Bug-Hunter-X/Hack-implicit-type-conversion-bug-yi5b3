function foo(x: double): double {
  return x + 1.0;
}

function bar(x: double): double {
  return foo(x) * 2.0;
}

function baz(x: double): double {
  return bar(x) + 3.0;
}

function main(): void {
  echo baz(5.0);
}

/*This code will produce the expected output. The issue is that Hack does not implicitly convert numeric types when performing mathematical operations. For example the function foo expects an integer as an argument but the function bar passes it a double.The solution is to make sure that the function foo accepts a double.This code should be fixed by changing the type of x in foo to double*/