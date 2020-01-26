use strict;
use warnings;
use lib 'lib';
use Display;
use Display::Count;
use Display::Count::Random;
use DisplayImpl::String;

my $d = Display->new( impl => DisplayImpl::String->new( string => 'Display Test') );
my $cd = Display::Count->new( impl => DisplayImpl::String->new( string => 'CountDisplay Test') );
my $rcd = Display::Count::Random->new( impl => DisplayImpl::String->new( string => 'RondomCountDisplay Test') );

$d->display();
$cd->multi_display(5);
$rcd->random_display(10);

