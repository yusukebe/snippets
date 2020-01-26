package Manager;
use Moose;
use Product;

has 'showcase' => (
    traits  => ['Hash'],
    is      => 'ro',
    isa     => 'HashRef[Product]',
    default => sub { {} },
    handles => {
        set_product => 'set',
        get_product => 'get',
    },
);

sub register {
    my ( $self, $name, $proto ) = @_;
    $self->set_product( $name, $proto );
}

sub create {
    my ( $self, $name ) = @_;
    my $product = $self->get_product($name);
    return $product->create_clone();
}

__PACKAGE__->meta->make_immutable();
