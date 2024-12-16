use strict;        # Enforces best practices and catches common programming errors
use warnings;      # Enables helpful warning messages about potential issues
use diagnostics;   # Provides more detailed error messages and explanations
use feature 'say'; # Introduces the 'say' function, which prints with an automatic newline
use feature 'switch'; # Enables advanced switch/given-when statement functionality


my @lines = `perldoc -u -f atan2`; # gets the output of atan2 function documentation and stores in an array
foreach (@lines) { #applies formatting to each element in the array and prints it
    s/\w<([^>]+)>/\U$1/g;
    print;
}


# How the formatting works:
# s/\w<([^>]+)>/\U$1/g;
# s/// is called the substitution operation and is applied to each line
    # \w<([^>]+)> matches the text enclosed in the w<> brackets
    # \w matches a word character
    #  <...> matches the text inside the angle brackets
    # ([^>]+) matches any characters except the > character
    # \U$1 converts the matched text to uppercase
    # g is an option which means that the substitution operation should be applied to all matches

# eg: if line contains C<example> it will be converted to EXAMPLE

# output without any formatting
# =over 8

# =item atan2 Y,X
# X<atan2> X<arctangent> X<tan> X<tangent>

# =for Pod::Functions arctangent of Y/X in the range -PI to PI

# Returns the arctangent of Y/X in the range -PI to PI.

# For the tangent operation, you may use the
# L<C<Math::Trig::tan>|Math::Trig/B<tan>> function, or use the familiar
# relation:

#     sub tan { sin($_[0]) / cos($_[0])  }

# The return value for C<atan2(0,0)> is implementation-defined; consult
# your L<atan2(3)> manpage for more information.

# Portability issues: L<perlport/atan2>.

# =back