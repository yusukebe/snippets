package Factory;
use Moose::Role;

requires 'create_product';
requires 'register_product';

sub create {
    my ( $self, $owner ) = @_;
    my $product = $self->create_product($owner);
    $self->register_product($product);
    return $product;
}

1;
