package FullBorder;
use Moose;

with qw/Role::Display Role::Border/;

sub get_columns {
    my $self = shift;
    return 1 + $self->display->get_columns() + 1;
}

sub get_rows {
    my $self = shift;
    return 1 + $self->display->get_rows() + 1;
}

sub get_row_text {
    my ( $self, $row ) = @_;
    if ( $row == 0 ) {
        return '+' . $self->make_line( '-', $self->display->get_columns() ) . '+';
    }
    elsif ( $row == $self->display->get_rows() + 1 ) {
        return '+' . $self->make_line( '-', $self->display->get_columns() ) . '+';
    }
    else {
        return '|' . $self->display->get_row_text( $row - 1 ) . '|';
    }
}

sub make_line {
    my ( $self, $char, $count ) = @_;
    my $line = '';
    for ( my $i = 0 ; $i < $count ; $i++ ) {
        $line .= $char;
    }
    return $line;
}

__PACKAGE__->meta->make_immutable();
