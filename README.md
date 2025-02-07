This repository contains a simple Hack program that demonstrates an uncommon bug related to implicit numeric type conversion. The program consists of three functions: foo, bar, and baz.  The function foo takes an integer argument and returns the argument plus 1. The function bar takes an integer argument, calls foo with this argument, and returns the result multiplied by 2. The function baz takes an integer argument, calls bar with this argument, and returns the result plus 3. The main function calls baz with the argument 5.  The expected output is 16. However, the actual output is 16.0. This is because Hack does not implicitly convert numeric types when performing mathematical operations. The fix involves explicitly casting the input type to a compatible type.