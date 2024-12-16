use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline

# arrays are one of the three data types in perl and to initialise an array use @ instead of $
my @array_1 = (1, 2, 3, 4, 5, 6, 7, 8, 9);
# print(@array_1);
# for loop to print all elements in the array
for my $arr_elm (@array_1){
    say $arr_elm;
}

# similar to for loop
foreach my $arr_el (@array_1){
    say $arr_el;
}

# for loop without declaring a variable
for (@array_1){
    say $_;
}

# You can store multiple data types
my @my_info = ("Derek", "123 Main St", 40, 6.25);
 
# You can assign new values by index
$my_info[4] = "Banas";
 
# You can access array items by index starting at 0
say $my_info[4];
say @my_info;

# slicing
# You can slice data from an array
my @my_name = @my_info[0, 4];
say @my_name;

# use keyword 'scalar' in array to return length of array
my $length_of_array = scalar @array_1;
say $length_of_array;

# Assign values from array to variables
my ($f_name, $address, $how_old, $l_name) = @my_info;
say "$f_name $l_name";
# if more vars then elements in array, undef will be returned for remaining elements
# if more array elements then vars, extra elements will be ignored
# use undef to skip elements in array
my ($f_name, undef, $how_old, $l_name) = @my_info;
say "$f_name $l_name";

my @primes = (2, 3, 5, 7, 11, 13, 17);

# Pop the last value off an array
say "Popped Value ", pop @primes;
 
# Push puts one on the end and returns the length
# Syntax is push(@array, value)
say "Pushed Value ", push @primes, 17;
print join(", ", @primes), "\n";
 
# Return the first item with shift
say "First Item ", shift @primes;
 
# Add a value to the front and get the length
# Syntax is unshift(@array, value)
say "Unshifted Item ", unshift @primes, 2;
print join(", ", @primes), "\n";
 
# Splice out values array, index to start, length
# Returns those values
say "Remove Index 0 - 2 ", splice @primes, 0, 3; # 0 is index, 3 is length
print join(", ", @primes), "\n";
 
# Join can also join a list like this
print join " ", ('list', 'of', 'words', "\n");
 
# Split turns a string into an array
my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;
print join(", ", @cust_array), "\n";
 
# Reverse reverses an array
@cust_array = reverse @cust_array;
print join(", ", @cust_array), "\n";
 
# Sort sorts an array
@cust_array = sort @cust_array;
print join(", ", @cust_array), "\n";
 
# Sort in reverse order
@cust_array = reverse sort @cust_array;
print join(", ", @cust_array), "\n";
 
# Grep filters a list according to an expression
my @number_array = (1,2,3,4,5,6,7,8);
 
# Adds the value if modulus operation doesn't return 0 using grep
my @odds_array = grep {$_ % 2} @number_array;
print join(", ", @odds_array), "\n";
 
# Map performs a function on every item
my @dbl_array = map {$_ * 2} @number_array;
print join(", ", @dbl_array), "\n";