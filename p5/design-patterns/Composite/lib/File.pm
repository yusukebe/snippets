package File;
use Moose;

with 'Entry';

sub print_list {
    my ( $self, $prefix ) = @_;
    printf( "%s/%s\n", $prefix, $self->name );
}

__PACKAGE__->meta->make_immutable();
