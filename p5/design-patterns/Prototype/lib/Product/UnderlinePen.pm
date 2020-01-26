package Product::UnderlinePen;
use Moose;

with 'Product';

has 'char' => (
    is  => 'ro',
    isa => 'Str',
);

sub use {
    my ( $self, $string ) = @_;
    my $length = length $string;
    print "$string\n";
    for ( my $i = 0 ; $i < $length ; $i++ ) {
        print $self->char;
    }
    print "\n";
}

__PACKAGE__->meta->make_immutable();
