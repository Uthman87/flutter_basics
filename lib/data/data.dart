import 'dart:math';

import '../models/category_model.dart';
import '../models/expense_model.dart';

final rand = Random();

final List<double> weeklySpending = [
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
];

_generateExpenses() {
  List<Expense> expenses = [
    Expense(name: 'Item 0', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 0', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 0', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 0', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 0', cost: rand.nextDouble() * 90),
    Expense(name: 'Item 0', cost: rand.nextDouble() * 90),
  ];

  return expenses;
}

List<Category> categories = [
  Category(name: 'Food', maxAmount: 450, expenses: _generateExpenses()),
  Category(name: 'Clothing', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: 'Utilities', maxAmount: 600, expenses: _generateExpenses()),
  Category(
      name: 'Entertainment', maxAmount: 330, expenses: _generateExpenses()),
  Category(
      name: 'Transportation', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: 'Housing', maxAmount: 1000, expenses: _generateExpenses()),
];
