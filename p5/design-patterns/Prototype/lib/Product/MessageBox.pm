package Product::MessageBox;
use Moose;

with 'Product';

has 'char' => (
    is  => 'ro',
    isa => 'Str',
);

sub use {
    my ( $self, $string ) = @_;
    my $length = length $string;
    for ( my $i = 0 ; $i < $length + 2 ; $i++ ) {
        print $self->char;
    }
    print "\n";
    printf( "%s%s%s\n", $self->char, $string, $self->char );
    for ( my $i = 0 ; $i < $length + 2 ; $i++ ) {
        print $self->char;
    }
    print "\n";
}

__PACKAGE__->meta->make_immutable();
