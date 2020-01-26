use strict;
use warnings;
use lib 'lib';
use Manager;
use Product::UnderlinePen;
use Product::MessageBox;

my $manager = Manager->new;
my $upen = Product::UnderlinePen->new( char => '~' );
my $mbox = Product::MessageBox->new( char => '*' );
my $pbox = Product::MessageBox->new( char => '+' );
$manager->register('strong message', $upen);
$manager->register('warning box', $mbox);
$manager->register('slash box', $pbox);

my $p1 = $manager->create('strong message');
$p1->use('Hello world');
my $p2 = $manager->create('warning box');
$p2->use('Hello world');
my $p3 = $manager->create('slash box');
$p3->use('Hello world');
