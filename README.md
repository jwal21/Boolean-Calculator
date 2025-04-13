# Boolean Calculator

A simple Boolean expression calculator implemented using **Lex** and **Yacc** in **C**. It supports standard Boolean operations and evaluates logical expressions written by the user, demonstrating compiler design concepts such as lexical analysis, parsing, and code generation.

## 📌 Features

- Supports Boolean constants: `true`, `false`
- Recognizes logical operators: `!` (NOT), `&&` (AND), `||` (OR)
- Handles grouping with parentheses: `( ... )`
- Parses and evaluates complex nested Boolean expressions
- Provides syntax error handling and basic input validation

## 🛠 Tech Stack

- **Language**: C  
- **Tools**: Lex (Flex), Yacc (Bison)

## 🚀 Getting Started

### Prerequisites

- `flex` (Lex)
- `bison` (Yacc)
- GCC compiler

### Compilation

```bash
flex calculator.l
bison -d calculator.y
gcc lex.yy.c calculator.tab.c -o boolcalc

### Usage

After compiling:
./boolcalc

Enter Boolean expressions such as:

true false &
true false |
'true false &
