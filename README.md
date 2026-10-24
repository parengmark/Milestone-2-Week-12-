# Week 9: Object-Oriented Programming in Dart

**Course:** PC16 – Mobile Development with Lab  
**Institution:** National Teachers College  
**Task Type:** Individual Task  

## Overview
This repository contains a console-based Dart program modeling a real-world object (a Jeepney) to demonstrate fundamental Object-Oriented Programming (OOP) principles. This serves as the foundation for Milestone 2, which will later incorporate inheritance, polymorphism, and mixins.

## Rubric Fulfillment
This program satisfies the 100-point scoring rubric requirements:

1. **Class Definition (25 pts):** The `Jeepney` class models a real-world object with properties (`route`, `capacity`) and behaviors (`board()`, `disembark()`).
2. **Constructor (25 pts):** A constructor `Jeepney(this.route, this.capacity)` initializes the object's core properties upon creation.
3. **Encapsulation (25 pts):** The `_currentPassengers` field is marked as private using an underscore. It can only be modified through the `board()` and `disembark()` methods, preventing invalid states (like exceeding capacity or having negative passengers). A getter `get passengers` is provided for safe reading.
4. **List/Map Usage (25 pts):** A `List<Jeepney>` named `fleet` is used in the `main()` function to store, organize, and iterate through multiple instantiated objects.

## How to Run
1. Ensure you have the [Dart SDK](https://dart.dev/get-dart) installed on your machine.
2. Open your terminal or command prompt.
3. Navigate to the directory containing this repository.
4. Execute the following command:
   ```bash
   dart run jeepney.dart
