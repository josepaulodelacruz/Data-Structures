import 'dart:io';


void main () {
  var selectedOption; 
  List<int> numbers = [20, 12, 3, 0]; //Data to manipulate
  List<int> deletedQues = [];
  while(selectedOption != "0") {
    print(
      "\n"
      "Enter an operation you\n"
      "1 - Enqueue()\n"
      "2 - Dequeue()\n"
      "3 - Peek()\n"
      "4 - isEmpty()\n"
      "5 - DisplayItems()\n"
      "6 - DisplayDeletedItems()\n"
      "0 - CLOSE PROGRAM",
    );
    var option = stdin.readLineSync(); /// for user input.
    print("\nYou selected $option");
    if(option!.contains("0")) {
      print('Closing now the Program');
    } else if (option == "1") {
      numbers = _enqueue(numbers);
    } else if(option == "2") {
      print("Doing Dequeue operation");
      print(numbers);
      print('Enter from 0 - ${numbers.length - 1}');
      String? insertNumber = stdin.readLineSync();
      int number = int.parse(insertNumber!);
      numbers = _dequeue(numbers, number);
      deletedQues.add(number);
    } else if(option == '3') {
      numbers = _peek(numbers);
    } else if(option == "4") {
      numbers = _isEmpty(numbers);
    } else if (option == "5") {
       _displayItems(numbers);
    } else if (option == "6") {
      _displayDeletedItems(deletedQues);

    } else {
      print('Invalid option! Please Try again.');
    }
    selectedOption = option;
  }

}


///Function for doing Enqueue operation
List<int> _enqueue(List<int> numbers) {
  print("Doing Enqueue operation");
  print(numbers);
  print('Enter an integer');
  String? insertNumber = stdin.readLineSync();
  int number = int.parse(insertNumber!);
  numbers.add(number); //built in function of dart, this code is similar to array push method
  print('Successfully added to the last of the queue');
  print(numbers);
  return numbers;
}

///Fnction for doing Dequeue operation
List<int> _dequeue(List<int> numbers, int number) {
  numbers.removeAt(number); // built in function of dart, this code java remove method using the index of the List
  print('Successfully remove from que');
  print(numbers);
  return numbers;
}

List<int> _peek(List<int> numbers) {
  print("Doing Peek operation");
  print("The front of the que ${numbers.last}"); ///getting the last value the array
  print(numbers);
  return numbers;
}

List<int> _isEmpty(List<int> numbers) {
  print("Doing IsEmpty Operation");
  print("Check que if no elements");
  print(numbers.isEmpty); // bool operation for checking if the array is empty return true/false
  return numbers;
}

List<int> _displayItems(List<int> numbers) {
  print("Doing Display Items Operation");
  print("Display items");
  print(numbers);
  return numbers;
}

List<int> _displayDeletedItems(List<int> numbers) {
  print("Doing Display Deleted Items Operation");
  print("List of deleted ques");
  print(numbers);
  return numbers;
}
