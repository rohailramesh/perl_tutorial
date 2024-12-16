use warnings;

# Write a program that computes the circumference of a circle
# with a radius of 12.5. Circumference is 2pi times the radius
# (approximately 2 times 3.141592654). The answer you get should
# be about 78.5.

my $radius = 12.5;
my $pi = 3.141592654;
my $circumference = 2 * $pi * $radius;
print "The circumference of a circle of radius: $radius is: $circumference  %d \n";

# formatted printing to one dp
my $radius_1 = 12.5;
my $pi_1 = 3.141592654;
my $circumference_1 = 2 * $pi * $radius;
printf "The formatted circumference of a circle of radius %.1f is: %.1f\n", $radius, $circumference;
