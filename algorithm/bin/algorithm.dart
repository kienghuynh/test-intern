import 'package:algorithm/algorithm.dart' as algorithm;


void miniMaxSum(List<int> arr) {
  // Find the minimum 
  int minValue = arr.reduce((value, element) => value < element ? value : element);

  // Find the maximum 
  int maxValue = arr.reduce((value, element) => value > element ? value : element);

  // Find the even 
  List<int> evenElements = arr.where((element) => element % 2 == 0).toList();

  // Find the odd 
  List<int> oddElements = arr.where((element) => element % 2 == 1).toList();

  // Sort the array 
  arr.sort();

  // Calculate the sum of all
  int totalSum = arr.reduce((value, element) => value + element);

  // Calculate the minimum sum 
  int minSum = totalSum - arr.last;

  // Calculate the maximum sum 
  int maxSum = totalSum - arr.first;

  // Print the results
  print('Minimum value: $minValue');
  print('Maximum value: $maxValue');
  print('Even elements: $evenElements');
  print('Odd elements: $oddElements');
  print('Minimum sum: $minSum');
  print('Maximum sum: $maxSum');
}

// Example usage:
void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  miniMaxSum(arr); // Output: see below
}