use strict;
use warnings;
use lib 'lib';
use Monster::Slime;
use Monster::Dragon;

my $slime  = Monster::Slime->new( name => 'Mr.Slime' );
my $dragon = Monster::Dragon->new( name => 'Mr.Dragon' );
for my $monster ( $slime, $dragon ) {
    $monster->show_info();
}
