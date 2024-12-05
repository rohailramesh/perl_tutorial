use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline

use feature 'switch';
# for loops
for(my $i = 0; $i < 10; $i++) {
    say $i;
}

# while loops
my $age = 0;
while($age < 24){
    say $age;
    $age++;
}

# while loops with next and last
my $i = 0;
while($i < 10){
    if($i == 5){
        $i++;
        next;
    }
    say $i;
    if($i == 8){
        last;
    }
    $i++;
}
# In this code, the loop starts at 0 and increments by 1 until it reaches 10. if it sees a 5, it skips it and goes to the next iteration. if it sees a 8, it breaks out of the loop


# The Do while loop is used when you must loop once
my $lucky_num = 7;
my $guess;
do {
  say "Guess a Number Between 1 and 10";
 
  # This is how you get user input
  $guess = <STDIN>;
} while $guess != $lucky_num;
 
say "You guessed 7";

# Given When Perl Switch statement
my $age_old = 18;
given ($age_old){
  when($_ > 16) { # $_ is the value of the variable
    say "Drive";
 
    # Will continue with the next cases
    continue;
  }
  when($_ > 17) {say "Go Vote";}
  default {say "Nothing Special";}
}
