use strict;
use warnings;
use lib 'lib';
use HumanAdaptor;

my $student = HumanAdaptor->new( name => 'Tanaka', age => 25 );
$student->show_name();
$student->show_age();
