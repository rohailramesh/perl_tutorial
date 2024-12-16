use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline


# Basic Arthmetic Operators
say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 = ", 5 ** 4;

# Built in functions
# Includes Trig functions plus
say "EXP 1 = ", exp 1; # e to the power of
say "HEX 10 = ", hex 10; # Convert from hexidecimal
say "OCT 10 = ", oct 10; # Convert from Octal
say "INT 6.45 = ", int(6.45); # Truncate You can use parentheses
say "LOG 2 = ", log 2; # Number to the power of e
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

# Assignment Operators
# +=, -=, *=, /=
my $rand_num = 5;
$rand_num += 1;
say "Number Incremented ", $rand_num;
 
# Shortcut Increment and Decrement
say "6++ = ", $rand_num++; # post increment which gets the value first and then increments
say "++6 = ", ++$rand_num; # pre increment which increments first and then gets the value
say "6-- = ", $rand_num--; # post decrement which gets the value first and then decrements
say "--6 = ", --$rand_num; # pre decrement which decrements first and then gets the value
 
# Order of operations
say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;