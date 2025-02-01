# Ada: Off-by-one Error in Array Iteration

This repository demonstrates a common off-by-one error in Ada when iterating through an array.  The error arises from attempting to access an array element beyond its defined bounds.

The `bug.ada` file contains the erroneous code.  The `bugSolution.ada` file provides a corrected version.

## Bug Description
The original code iterates through an array and attempts to access the next element in each iteration without considering the boundary condition. This will cause a runtime error.  The error occurs because the loop index `I` goes up to the last index of the array, and then the code tries to access `My_Data(I + 1)`, which is outside the array bounds.

## Solution
The solution adjusts the loop condition or access to array elements to avoid exceeding the array's upper bound.