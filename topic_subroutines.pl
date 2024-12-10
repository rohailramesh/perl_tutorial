use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline

use feature 'state'; #Retains value of variable in subroutine even after execution

# subroutines are just functions that execute a block of code and take in arguments and return something
sub get_random{
    return int(rand 11)
}

# say get_random();

# Pass arguments into subroutine are stored in an array @_
sub get_random_max{
    my ($max_num) = @_; #max_num is the arg which is stored in array
    $max_num ||= 11; #defaut is defined is no argument is passed
    return int(rand $max_num);

}

say get_random_max(100); #if 100 is not passed as argument, subroutine will return a random int where the mex can be 11 as defined as default else it will be a random int where mex could be 100

# Receive multiple values
sub get_sum {
  my ($num_1, $num_2) = @_;
 
  # Define defaults
  $num_1 ||= 1;
  $num_2 ||= 1;
 
  return $num_1 + $num_2;
}
 
say get_sum(5,4);

# Receive x number of args
sub num_array{
    my $sum = 0;
    foreach my $val (@_){
        $sum += $val;
    }
    return $sum;
}

say num_array(1,2,3,4,5,6,7,8,9);

# You can have a variable in a function retain its
# value with state
sub increment {
  state $execute_total = 0;
  $execute_total++;
  say "Executed $execute_total times";
}
 
increment();
increment();
 
 # You can return multiple values
sub double_array {
  my @num_array = @_;
  $_ *= 2 for @num_array;
  return @num_array;
}
 
my @rand_array = (1,2,3,4,5);
 
print join(", ", double_array(@rand_array)), "\n";

# You can also return single variables
sub get_mults {
  my ($rand_num) = @_;
 
  # Define a default if no Arguments
  $rand_num ||= 1;
 
  return $rand_num * 2, $rand_num * 3;
}
 
my ($dbl_num, $trip_num) = get_mults(3);
 
say "$dbl_num, $trip_num";

# Recursive Subroutine
sub factorial {
  my ($num) = @_;
  return 0 if $num <= 0;
  return 1 if $num == 1;
  return $num * factorial($num - 1);
}
 
say "Factorial 4 = ", factorial(4);