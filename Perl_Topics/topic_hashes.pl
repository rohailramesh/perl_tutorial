use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline

# hashes are one of the three data types in perl and to initialise a hash use % instead of $
my %employees = (
  "Sue" => 35,
  "Paul" => 43,
  "Sam" => 39
);
 
# Use $ to access the hash value
# Note you don't have to use quotes for the key
printf("Sue is %d \n", $employees{Sue});

$employees{"Rohail"} = 23;
printf("Rohail is %d \n", $employees{Rohail});

# Iterate over hash and print keys and values
while(my ($key, $value)=each %employees){
    print "$key $value \n";
}

# You can slice data from a hash
my @ages = @employees{"Sue", "Sam"};
say @ages;

# Convert a hash into an array
my @hash_array = %employees;
say @hash_array;

# delete a pair from hash
delete $employees{'Sam'};
while(my ($key, $value)=each %employees){
    print "$key $value \n";
}

# Iterate hash using key
for my $key (keys %employees){
    printf "This is for loop using keys \n", %employees{$key};
}

# using ternary operator in hashes
say ((exists $employees{'Sam'}) ? 'Sam is here' : "Sam is not here");