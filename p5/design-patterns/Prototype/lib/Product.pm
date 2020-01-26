package Product;
use Moose::Role;
use Clone;

requires 'use';

sub create_clone {
    my $self = shift;
    return Clone::clone($self);
}

1;
