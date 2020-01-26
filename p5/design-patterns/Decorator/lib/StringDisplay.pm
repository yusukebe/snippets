package StringDisplay;
use Moose;

with 'Role::Display';

has 'string' => (
    is  => 'ro',
    isa => 'Str',
);

sub get_columns {
    my $self = shift;
    return length $self->string;
}

sub get_rows {
    return 1;
}

sub get_row_text {
    my ( $self, $row ) = @_;
    return $row == 0 ? $self->string : '';
}

__PACKAGE__->meta->make_immutable();
