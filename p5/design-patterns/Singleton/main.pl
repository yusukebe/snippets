use strict;
use warnings;
use lib 'lib';
use feature qw/say/;
use Singleton;

my $obj1 = Singleton->get_instance();
my $obj2 = Singleton->get_instance();

if ( $obj1 == $obj2 ) {
    say '$obj1 and $obj2 are same.';
}
else {
    say '$obj1 and $obj2 are different.';
}
