use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline
use feature 'switch'; # Enables advanced switch/given-when statement functionality


# Scalars are variables that store a single value of any type.
# The variable must start with a letter or _ and then numbers
# there after
# A variable receives the default value of undefined
# my $variable_name = $value;

my $name = 'Rohail Ramesh';
print $name, "\n";

my $age = 23;
my $year_born = 2024 - $age;
print $year_born, "\n";

# can assign multiple scalars in one line
my ($name_1, $age_1, $year_born_1) = ('RohailRamesh', 23, 2024 - $age);
print $name_1, "\n";
print qq($name_1 is $age_1 years old and was born in $year_born_1); #qq is used instead of double quotes


my $info_on_multiple_lines = <<"END"; # <<"END" is used to create a multi-line string
    Rohail Ramesh
    23 years old
    Born in 2024
END
# print $info_on_multiple_lines;

# instead of using print we can use 'say' which automatically adds a newline
say $info_on_multiple_lines;


# You can formatted strings by defining the data type after %
# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)

my $phone_num = 7448706358;
printf("%d \n", $phone_num);

# prints to 16 decimal places for floating point precision
# printf("%.16f \n", $big_float + .1000000000000001);

# How to switch scalar values
my $a = 1;
my $b = 2;
say $a, " ", $b;
print qq{a is $a and b is $b}, "\n";
($a, $b) = ($b, $a);
say $a, " ", $b;
print qq{a is $a and b is $b}, "\n";
