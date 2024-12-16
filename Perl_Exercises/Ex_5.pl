use warnings;

# Write a program that reads a list of strings on separate lines
# until end-of-input and prints out the list in reverse order.

chomp(@string_list = <>);
@reverse_string_list = reverse(@string_list);
print "\n";
print "@reverse_string_list";