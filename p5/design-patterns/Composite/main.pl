use strict;
use warnings;
use lib 'lib';
use Directory;
use File;

my $workspace_dir = Directory->new( name => 'workspace' );
my $composite_dir = Directory->new( name => 'composite' );
my $test_dir1 = Directory->new( name => 'test1' );
my $test_dir2 = Directory->new( name => 'test2' );
$workspace_dir->add($composite_dir);
$workspace_dir->add($test_dir1);
$workspace_dir->add($test_dir2);

my $directory = File->new( name => 'Directory.pm' );
my $entity = File->new( name => 'Entity.pm' );
my $file = File->new( name => 'file.pl' );
my $main = File->new( name => 'main.pl' );

$composite_dir->add($directory);
$composite_dir->add($entity);
$composite_dir->add($file);
$composite_dir->add($main);
$workspace_dir->print_list();
