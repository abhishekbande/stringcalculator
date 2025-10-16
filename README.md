# String Calculator - TDD Kata

A Test-Driven Development implementation of the String Calculator Kata.

## Requirements Met

- ✅ Handles empty strings (returns 0)
- ✅ Handles single and multiple numbers
- ✅ Supports comma delimiter
- ✅ Supports newline delimiter  
- ✅ Supports custom delimiters (e.g., `//;\n1;2` returns 3)
- ✅ Throws exception for negative numbers
- ✅ Shows all negatives in exception message

## Installation

```bash
bundle install
```

## Running Tests

```bash
bundle exec rspec
```

## Usage

```ruby
require_relative 'lib/string_calculator'

calc = StringCalculator.new

calc.add("")           # => 0
calc.add("1,2,3")      # => 6
calc.add("1\n2,3")     # => 6
calc.add("//;\n1;2")   # => 3
calc.add("-1,2")       # => raises exception
```

## TDD Approach

This project was built using Test-Driven Development. Each feature was:
1. Written as a failing test first (Red)
2. Implemented with minimum code (Green)
3. Refactored while keeping tests green

See the commit history to observe the TDD progression.
