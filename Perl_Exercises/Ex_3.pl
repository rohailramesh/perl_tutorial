use warnings;

# Write a program that prompts for and reads two numbers (on
# separate lines of input) and prints out the product of the
# two numbers multiplied together.

chomp($input_1 = <STDIN>); #takes an input from the user (STDN) is optional
chomp($input_2 = <>);
$result = $input_1 * $input_2;
print "$result \n";


# if chomp was not used then an input by user of 4 would be stored as "4\n"
# this would interfere with calculations as newline character is part of string
# so we use chomp which removes the newline at the end when user inputs something into terminal and hits enter