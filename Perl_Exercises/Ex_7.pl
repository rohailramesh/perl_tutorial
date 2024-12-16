use strict;
use warnings;

chomp(my @list_of_ages_input = <STDIN>);
# print "@list_of_names_input \n";
foreach my $age (@list_of_ages_input){
    print "$age \n";
}

my @names = qw/Rohail Reeha Rommel/; #only has index 0, 1 and 2
foreach my $person_num (@list_of_ages_input){
    print "$names[$person_num - 1] $person_num\n"; #so if person_num -1 is not within the range of names index, it will return error
    # person_num is an element from the input list
}