package Singleton;
use feature qw/say/;
use Moose;
# use MooseX::Singleton;

my $_singleton;

sub BUILD {
    say "The instance is created.";
}

sub get_instance {
    my $class = shift;
    if ( !defined $_singleton ) {
        $_singleton = $class->new(@_);
    }
    return $_singleton;
}

__PACKAGE__->meta->make_immutable();
