use strict;
use warnings;
use lib 'lib';
use Entity::Directory;
use Entity::File;
use Visitor::List;

my $workspace_dir = Entity::Directory->new( name => 'workspace' );
my $composite_dir = Entity::Directory->new( name => 'Visitor' );
my $lib_dir = Entity::Directory->new( name => 'lib' );
my $entity_dir = Entity::Directory->new( name => 'Entity' );
my $visitor_dir = Entity::Directory->new( name => 'Visitor' );
$workspace_dir->add( $composite_dir );
$composite_dir->add( $lib_dir );
$lib_dir->add( $entity_dir );
$lib_dir->add( $visitor_dir );

my $entity = Entity::File->new( name => 'Entity.pm' );
my $main = Entity::File->new( name => 'main.pl' );
my $directory = Entity::File->new( name => 'Directory.pm' );
my $file = Entity::File->new( name => 'File.pm' );
my $visitor = Entity::File->new( name => 'Visitor.pm' );
my $list = Entity::File->new( name => 'List.pm' );

$composite_dir->add($main);
$lib_dir->add($entity);
$lib_dir->add($visitor);
$entity_dir->add($directory);
$entity_dir->add($file);
$visitor_dir->add($list);

$workspace_dir->accept( Visitor::List->new() );
