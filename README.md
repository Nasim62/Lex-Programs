
# Lex Programs for Comment Removal and Calculator

This repository contains two programs written in Lex (Lexical Analyzer Generator). These programs demonstrate the use of lexical analysis to perform specific text processing tasks.

## Files in the Repository
1. **`remove_comments.lex`**: A Lex program designed to remove comments from a given input file or text.
2. **`calculator.lex`**: A Lex program that implements a basic calculator capable of evaluating arithmetic expressions.

## Features

### 1. `remove_comments.lex`
- Detects and removes single-line and multi-line comments from a given input.
- Can be used to preprocess source code by cleaning up comments before further analysis.

### 2. `calculator.lex`
- Implements a simple arithmetic calculator.
- Supports basic arithmetic operations:
  - Addition (`+`)
  - Subtraction (`-`)
  - Multiplication (`*`)
  - Division (`/`)
- Evaluates and prints the result of the given arithmetic expressions.

## Prerequisites
To use these Lex programs, you need:
- A working installation of Lex or Flex.
- A C compiler (e.g., GCC).

## How to Use

### Steps to Compile and Run a Lex Program
1. Compile the Lex file:
   ```bash
   lex program_name.lex
   gcc lex.yy.c -o program_name
   ```
2. Run the program:
   ```bash
   ./program_name
   ```
3. Provide input as required by the program.

### Example for `remove_comments.lex`
1. Compile and run:
   ```bash
   lex remove_comments.lex
   gcc lex.yy.c -o remove_comments
   ./remove_comments
   ```
2. Input a text or file content containing comments.
3. The output will display the text without comments.

### Example for `calculator.lex`
1. Compile and run:
   ```bash
   lex calculator.lex
   gcc lex.yy.c -o calculator
   ./calculator
   ```
2. Input arithmetic expressions (e.g., `5 + 3 * 2`).
3. The program will output the calculated result.
