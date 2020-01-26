package SideBorder;
use Moose;

with qw/Role::Display Role::Border/;

sub get_columns {
    my $self = shift;
    return 1 + $self->display->get_columns() + 1;
}

sub get_rows {
    my $self = shift;
    return $self->display->get_rows();
}

sub get_row_text {
    my ( $self, $row ) = @_;
    return '*' . $self->display->get_row_text($row) . '*';
}

__PACKAGE__->meta->make_immutable();
