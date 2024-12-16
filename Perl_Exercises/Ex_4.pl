use warnings;

# Write a program that prompts for and reads a string and a number
# (on separate lines of input) and prints out the string the number
# of times indicated by the number on separate lines.

chomp($user_string = <>);
chomp($user_num = <>);
print "$user_string \n" x $user_num;
