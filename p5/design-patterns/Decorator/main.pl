use strict;
use warnings;
use lib 'lib';
use StringDisplay;
use SideBorder;
use FullBorder;

my $b1 = StringDisplay->new( string => 'Hello world' );
$b1->show();
print "\n";

my $b2 = SideBorder->new( display => $b1);
$b2->show();
print "\n";

my $b3 = FullBorder->new( display => $b2);
$b3->show();
print "\n";

my $b4 = FullBorder->new(
    display => SideBorder->new(
        display => FullBorder->new(
            display => StringDisplay->new( string => 'Hello japan' )
        )
    )
);
$b4->show();
print "\n";
