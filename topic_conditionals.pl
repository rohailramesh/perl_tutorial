use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline


# Perl considers undef, 0, 0.0, "", and "0" to be false
# ==, !=, <, <=, >, >=
# Boolean Operators: !, &&, ||

my $num = 2;
if ($num == 5) {
    say "Number is 5";
}elsif ($num == 6) {
    say "Number is 6";
}else {
    say "Number is not 5 or 6";
}

# Comparison operators
# eq is equals
# ne is not equals
# lt is less than
# le is less than or equal to
# gt is greater than
# ge is greater than or equal to

if('a' ne 'b') {
    say "a is not equal to b";
}else {
    say "a is equal to b";
}

# unless keyword is used to negate the result of a condition
unless($num == 1) {
    # This code will run if the condition is false
    say "Number is not 1";
}

# Ternary operator returns different values depending
# on a condition
say (($num > 18) ? "Can Vote" : "Can't Vote");