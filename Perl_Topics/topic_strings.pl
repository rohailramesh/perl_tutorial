use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline

my $long_str = "Very very long string";
say"Length of string is: ", length $long_str;

# index returns the location of a string within a strint
# printf(index $string_var, "string_to_find_index_of")
printf("Index of very is at %d \n", index $long_str, "very");

# rindex returns the last index of last occurence of string
printf("RIndex of very is at %d \n", rindex $long_str, "e");

$long_str = $long_str . " is even longer now after concatenation";
# say $long_str

# substr -> substr $var_name, starting index, num_of_chars_to retrieve
say "Sub string of long_str from index 0 for 4 chars is ", substr $long_str, 0, 4; 

# chop deletes lasr char in string and retuerns it
printf("Last char in %s \n", chop $long_str);

# chomp deletes the last newline
my $no_newline = "No Newline\n";
chomp $no_newline;
say $no_newline;

printf("Uppercase : %s \n", uc $long_str);
printf("Lowercase : %s \n", lc $long_str);
printf("1st Lowercase : %s \n", lcfirst $long_str);

# s/// takes a list of characters on the left and replaces
# them with characters on the right
# Replace spaces with comma space
# g = Replace all occurances
# i = ignore case
$long_str =~ s/ /, /g;
say $long_str;

# x repeats a string x amount of times 
my $repeat_str_x_times = "This is on repeat \n" x 3;
say $repeat_str_x_times;

# Increment letters
my $current_letter = "a";
say "Next letter is: ", ++$current_letter;

my @alphabets = ('a' .. 'z');
print join(", ", @alphabets);

my @numbers = ('0' .. '9'), "\n";
print join(", ", @numbers);