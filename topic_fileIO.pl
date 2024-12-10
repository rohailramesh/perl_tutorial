use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline

use feature 'state'; #Retains value of variable in subroutine even after execution

my $emp_file = 'employees_demo.txt';
 
# $fh is the file handle which is used to access the file
# < means we are opening the file for reading
# $! Provides an error message
open my $fh, '<', $emp_file
  or die "Can't open file : $!";
 
# While there are lines keep reading
while(my $info = <$fh>){
  # Delete newline
  chomp($info);
 
  my ($emp_name, $job, $id) = split /:/, $info;
  print "$emp_name $job $id \n";
}
 
# Close the file
close $fh or die "Couldn't Close File : $!";
 
# # Open the file for appending
# open $fh, '>>', $emp_file
#   or die "Can't open file : $!";
 
# # Append to the file
# print $fh "Mark:Salesman:124\n";
 
# # Close the file
# close $fh or die "Couldn't Close File : $!";
 
# # Open file to read write it
# open $fh, '+<', $emp_file
#   or die "Can't open file : $!";
 
#   # Seek to the beginning
#   seek $fh, 0, 0;
 
#   # Insert item
#   print $fh "Phil:Salesman:125\n";
 
#   # Close the file
#   close $fh or die "Couldn't Close File : $!";