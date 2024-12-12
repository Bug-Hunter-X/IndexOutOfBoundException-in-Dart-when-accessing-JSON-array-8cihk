# Dart JSON Array Access Bug
This repository demonstrates a common error in Dart when accessing elements of a JSON array: attempting to access elements without checking the array's length.

The `bug.dart` file contains the buggy code, which throws an `IndexOutOfBoundException` if the JSON array has fewer than two elements.  The `bugSolution.dart` file demonstrates how to avoid this error by checking the array length before accessing elements. 

## How to Reproduce the Bug
1. Clone the repository.
2. Run `bug.dart`.
3. If the JSON response from the API has less than two elements, you'll see an `IndexOutOfBoundException`.

## Solution
The solution is in `bugSolution.dart`.  Always check the array length before attempting to access elements to prevent this exception.