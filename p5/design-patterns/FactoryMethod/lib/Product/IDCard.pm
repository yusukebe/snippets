package Product::IDCard;
use Moose;

with 'Product';

has 'owner' => (
    is     => 'ro',
    isa    => 'Str',
    reader => 'get_owner',
);

around BUILDARGS => sub {
    my $orig   = shift;
    my $class  = shift;
    my %params = @_;
    print "Make card for $params{owner}.\n";
    return $class->$orig(%params);
};

sub use {
    my $self = shift;
    printf( "Use card for %s.\n", $self->get_owner );
}

__PACKAGE__->meta->make_immutable();
